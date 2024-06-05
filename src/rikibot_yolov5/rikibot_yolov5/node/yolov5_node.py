#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import cv2
import torch
import rospy
import numpy as np

from std_msgs.msg import Header
from sensor_msgs.msg import Image
from yolov5_ros_msgs.msg import BoundingBox, BoundingBoxes
from ultralytics import YOLO


class Yolo_Dect:
    def __init__(self):

        # load parameters
        yolov5_path = rospy.get_param('/yolov5_path', '')

        weight_path = rospy.get_param('~weight_path', '')
        image_topic = rospy.get_param('~image_topic', '/camera/rgb/image_raw')
        pub_topic = rospy.get_param('~pub_topic', '/yolov5/BoundingBoxes')
        self.camera_frame = rospy.get_param('~camera_frame', '')
        conf = rospy.get_param('~conf', '0.5')

        # load local repository(YoloV5:v6.0)
        self.model = YOLO(weight_path)

        # which device will be used
        if (rospy.get_param('/use_cpu', 'false')):
            rospy.loginfo("use gpu")
            self.model.cuda()
        else:
            rospy.loginfo("use cpu")
            self.model.cpu()

        self.model.conf = conf
        self.color_image = Image()
        self.getImageStatus = False

        # Load class color
        self.classes_colors = {}

        # image subscribe
        self.color_sub = rospy.Subscriber(image_topic, Image, self.image_callback, queue_size=1, buff_size=52428800)

        # output publishers
        self.position_pub = rospy.Publisher(pub_topic,  BoundingBoxes, queue_size=1)

        self.image_pub = rospy.Publisher('/yolov5/detection_image',  Image, queue_size=1)

        # if no image messages
        while (not self.getImageStatus) :
            rospy.loginfo("waiting for image.")
            rospy.sleep(2)

    def image_callback(self, image):
        self.boundingBoxes = BoundingBoxes()
        self.boundingBoxes.header = image.header
        self.boundingBoxes.image_header = image.header
        self.getImageStatus = True
        self.color_image = np.frombuffer(image.data, dtype=np.uint8).reshape(image.height, image.width, -1)
        self.color_image = cv2.cvtColor(self.color_image, cv2.COLOR_BGR2RGB)

        results = self.model(self.color_image)
        self.dectshow(self.color_image, results[0], image.height, image.width)

        cv2.waitKey(3)

    def dectshow(self, org_img, result, height, width):
        img = org_img.copy()

        cls = list(map(lambda x:result.names[x.item()], result.boxes.cls.cpu()))
        count = np.int16(len(cls))
        conf = result.boxes.conf.cpu().numpy().astype(np.float64)
        boxs = result.boxes.xyxy.cpu().numpy().astype(np.int64)

        for i in range(len(cls)):
            boundingBox = BoundingBox()
            boundingBox.probability = conf[i]
            boundingBox.xmin = boxs[i][0]
            boundingBox.ymin = boxs[i][1]
            boundingBox.xmax = boxs[i][2]
            boundingBox.ymax = boxs[i][3]
            boundingBox.num = count
            boundingBox.Class = cls[i]

            if cls[i] in self.classes_colors.keys():
                color = self.classes_colors[cls[i]]
            else:
                color = np.random.randint(0, 183, 3)
                self.classes_colors[cls[i]] = color

            cv2.rectangle(img,
                          (int(boxs[i][0]), int(boxs[i][1])), (int(boxs[i][2]), int(boxs[i][3])),
                          (int(color[0]),int(color[1]), int(color[2])), 2)

            if boxs[i][1] < 20:
                text_pos_y = boxs[i][1] + 30
            else:
                text_pos_y = boxs[i][1] - 10

            cv2.putText(img, cls[i],
                        (int([i][0]), int(text_pos_y)-10),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.6, (255, 255, 255), 2, cv2.LINE_AA)

            self.boundingBoxes.bounding_boxes.append(boundingBox)
            self.position_pub.publish(self.boundingBoxes)
        self.publish_image(img, height, width)
        cv2.imshow('rikibot_yolov5', img)

    def publish_image(self, imgdata, height, width):
        image_temp = Image()
        header = Header(stamp=rospy.Time.now())
        header.frame_id = self.camera_frame
        image_temp.height = height
        image_temp.width = width
        image_temp.encoding = 'bgr8'
        image_temp.data = np.array(imgdata).tobytes()
        image_temp.header = header
        image_temp.step = width * 3
        self.image_pub.publish(image_temp)


def main():
    rospy.init_node('rikibot_yolov5', anonymous=True)
    yolo_dect = Yolo_Dect()
    rospy.spin()


if __name__ == "__main__":

    main()
