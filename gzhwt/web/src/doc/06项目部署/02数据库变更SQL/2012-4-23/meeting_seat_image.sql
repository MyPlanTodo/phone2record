CREATE TABLE `meeting_seat_image` (
  `offset_y` varchar(128) DEFAULT '0.0' COMMENT '��ͼʱƫ�Ƶ�Y�����ϰ�߿ճ�����λ��',
  `offset_x` varchar(128) DEFAULT '0.0' COMMENT '��ͼʱƫ�Ƶ�X�������߿ճ�����λ��',
  `image` mediumblob COMMENT ' �᳡���ŵĽ�ͼ',
  `meeting_id` int(11) NOT NULL,
  PRIMARY KEY (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
