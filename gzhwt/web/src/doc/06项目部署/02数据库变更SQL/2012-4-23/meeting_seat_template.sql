CREATE TABLE `meeting_seat_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL COMMENT 'ģ������',
  `seat_no` int(11) DEFAULT NULL COMMENT '��λ��',
  `x` varchar(255) NOT NULL,
  `y` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1-��ʾΪ��λ��2-��ʾΪ���ԣ�3-��ʾΪͶӰ',
  `seat_type` int(11) DEFAULT NULL COMMENT '��type��1ʱ��Ч���˴�1-��ʾ������λ��2-��ʾ��ϯ̨��λ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;
