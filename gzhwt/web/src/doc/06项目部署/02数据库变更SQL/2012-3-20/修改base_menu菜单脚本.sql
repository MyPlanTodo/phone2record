/**
*�޸�base_menu�˵��ű�
*/

/*
* �����������Ĳ˵�(web+wap)
*/
/* �Ѳ˵�base_menu������Ϊģ��˵� */
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('1','�������� ',NULL,'portal/pri/news/show.action?meetingId=','1','WEB','��������','5',NULL,NULL,NULL,'1',NULL);
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('1','��������',NULL,'wap/pri/news/show.action?meetingId=','1','WAP','��������','5',NULL,NULL,NULL,'1',NULL);

/* �Ѳ˵�����base_menu������Ϊ���������͵Ĳ˵�  */
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('1','�������� ',NULL,'portal/pri/news/show.action?meetingId=','1','WEB','��������','5',NULL,NULL,NULL,'1',1);
insert into `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) values('1','��������',NULL,'wap/pri/news/show.action?meetingId=','1','WAP','��������','5',NULL,NULL,NULL,'1',1);


/*
* ���ӳ齱��Ϣ(web+wap)
*/
INSERT INTO `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) VALUES 
  (2,'�齱��Ϣ',NULL,'portal/pri/meeting/lucky_findLuckyHistory.action?meetingId=',1,'WEB','�齱��Ϣ',8,NULL,NULL,NULL,1,NULL),
  (5,'�齱��Ϣ',NULL,'wap/pri/lucky/lucky_findLuckyHistory.action?meetingId=',1,'WAP','�齱��Ϣ',10,NULL,NULL,NULL,1,NULL);

/* �Ѳ˵�����base_menu������Ϊ���������͵Ĳ˵�  */
INSERT INTO `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) VALUES 
  (2,'�齱��Ϣ',NULL,'portal/pri/meeting/lucky_findLuckyHistory.action?meetingId=',1,'WEB','�齱��Ϣ',8,NULL,NULL,NULL,1,1),
  (5,'�齱��Ϣ',NULL,'wap/pri/lucky/lucky_findLuckyHistory.action?meetingId=',1,'WAP','�齱��Ϣ',10,NULL,NULL,NULL,1,1);



/*
* ���ӻ᳡����(web+wap)
*/

INSERT INTO `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) VALUES 
  (2,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,'WEB','�᳡����',8,NULL,NULL,NULL,1,NULL),
  (5,'�᳡����',NULL,'wap/pri/paper/paper_findEnablePaper.action?meetingId=',1,'WAP','�᳡����',10,NULL,NULL,NULL,1,NULL);


/* �Ѳ˵�����base_menu������Ϊ���������͵Ĳ˵�  */
INSERT INTO `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) VALUES 
  (2,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,'WEB','�᳡����',8,NULL,NULL,NULL,1,1),
  (5,'�᳡����',NULL,'wap/pri/paper/paper_findEnablePaper.action?meetingId=',1,'WAP','�᳡����',10,NULL,NULL,NULL,1,1);



/*
* ���Ӽα���Ϣ(web+wap)
*/
INSERT INTO `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) VALUES
 	(2,'�α���Ϣ',NULL,'portal/pri/meeting/guest_findAllGuest.action?meetingId=',1,'WEB','�α���Ϣ',8,NULL,NULL,NULL,1,NULL),
 	(5,'�α���Ϣ',NULL,'wap/pri/guest/guest_findAllGuest.action?meetingId=',1,'WAP','�α���Ϣ',8,NULL,NULL,NULL,1,NULL);


/* �Ѳ˵�����base_menu������Ϊ���������͵Ĳ˵�  */
INSERT INTO `base_menu` (`type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) VALUES
 	(2,'�α���Ϣ',NULL,'portal/pri/meeting/guest_findAllGuest.action?meetingId=',1,'WEB','�α���Ϣ',8,NULL,NULL,NULL,1,1),
 	(5,'�α���Ϣ',NULL,'wap/pri/guest/guest_findAllGuest.action?meetingId=',1,'WAP','�α���Ϣ',8,NULL,NULL,NULL,1,1);

/**
* ɾ�����еĿͻ��˲˵�
*/

delete from base_menu where terminal_type='CLIENT';
delete from client_menu where terminal_type='CLIENT';

delete from base_menu where name='��Ʒ����';
delete from client_menu where name='��Ʒ����';

update base_menu set name='ͶƱ' where name='ͶƱ����';
update client_menu set name='ͶƱ' where name='ͶƱ����';
commit;