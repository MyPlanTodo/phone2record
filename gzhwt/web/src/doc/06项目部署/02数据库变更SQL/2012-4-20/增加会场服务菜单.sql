/*
* ���ӻ᳡����˵�(web+touch)
*/
/* �Ѳ˵�base_menu������Ϊģ��˵� */
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('1','�᳡����',NULL,'portal/pri/meeting/liveService_requestService.action?meetingId=','1','WEB','�᳡����','17',NULL,NULL,NULL,'0',NULL);
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('0','�᳡����','upload/menu_icon/touch/meeting_service.png','touch/pri/meeting/liveService_requestService.action?meetingId=','1','TOUCH','�᳡����','17',NULL,NULL,NULL,'0',NULL);

/* �Ѳ˵�����base_menu������Ϊ���������͵Ĳ˵�  */
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('1','�᳡���� ',NULL,'portal/pri/meeting/liveService_requestService.action?meetingId=','1','WEB','�᳡����','15',NULL,NULL,NULL,'0',1);
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('0','�᳡����','upload/menu_icon/touch/meeting_service.png','touch/pri/meeting/liveService_requestService.action?meetingId=','1','TOUCH','�᳡����','17',NULL,NULL,NULL,'0','1');