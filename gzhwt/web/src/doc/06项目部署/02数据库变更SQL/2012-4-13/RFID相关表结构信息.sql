/*
* RFID��ر�ṹ��Ϣ
*/

/*
* ��trigger_task�����ֶ�sign_in(�Ƿ����ǩ����
*/

alter table trigger_task add column sign_in int default 1;

/*
* RFIDǩ����¼��
*/

CREATE TABLE `rfid_sign_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sign_time` datetime DEFAULT NULL,
  `tag_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COMMENT='RFIDǩ����¼��';