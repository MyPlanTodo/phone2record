/*
* ���ӻ᳡����(��λ����)�˵�(web+touch)
*/
/* �Ѳ˵�base_menu������Ϊģ��˵� */
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('1','��λ����',NULL,'portal/pri/meeting/managerseat_getSeatJsp.action?meetingId=','1','WEB','��λ����','15',NULL,NULL,NULL,'0',NULL);
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('0','��λ����','upload/menu_icon/touch/manage_seat.png','pages/touch/pri/seat/meetingSeat.jsp?meetingId=','1','TOUCH','��λ����','15',NULL,NULL,NULL,'0',NULL);

/* �Ѳ˵�����base_menu������Ϊ���������͵Ĳ˵�  */
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('1','��λ���� ',NULL,'portal/pri/meeting/managerseat_getSeatJsp.action?meetingId=','1','WEB','��λ����','15',NULL,NULL,NULL,'0',1);
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('0','��λ����','upload/menu_icon/touch/manage_seat.png','pages/touch/pri/seat/meetingSeat.jsp?meetingId=','1','TOUCH','��λ����','15',NULL,NULL,NULL,'0','1');