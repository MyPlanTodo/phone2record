CREATE TABLE `meeting_seat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  `meeting_id` int(11) NOT NULL COMMENT '����ID',
  `user_id` int(11) DEFAULT NULL COMMENT '�����ԱID����typeΪ1ʱ��Ч',
  `seat_no` int(11) DEFAULT NULL COMMENT '��λ�ţ���typeΪ1ʱ��Ч',
  `x` varchar(255) NOT NULL COMMENT '�������x���꣬Ϊ��flex��̨��ȷ��λ�á������ǻ᳡�е���λ��װ��Ʒ�����绨��ֲ���',
  `y` varchar(255) NOT NULL COMMENT '����λ��y���꣬Ϊ��flex��̨��ȷ��λ�á������ǻ᳡�е���λ��װ��Ʒ�����绨��ֲ���',
  `type` int(11) NOT NULL COMMENT '1-��ʾΪ��λ��2-��ʾΪ���ԣ�3-��ʾΪͶӰ',
  `seat_type` int(11) DEFAULT NULL COMMENT '��type��1ʱ��Ч���˴�1-��ʾ������λ��2-��ʾ��ϯ̨��λ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1486 DEFAULT CHARSET=utf8;
