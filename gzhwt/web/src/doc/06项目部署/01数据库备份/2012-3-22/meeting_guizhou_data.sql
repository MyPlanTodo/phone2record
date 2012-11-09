# SQL Manager 2005 for MySQL 3.6.5.8
# ---------------------------------------
# Host     : 10.196.136.96
# Port     : 3306
# Database : meeting_guizhou


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES gbk */;

SET FOREIGN_KEY_CHECKS=0;

USE `meeting_guizhou`;


#
# Data for the `admin_role` table  (LIMIT 0,500)
#

INSERT INTO `admin_role` (`id`, `role_name`, `create_time`, `modify_time`, `creator`, `modifier`, `state`, `comments`) VALUES 
  (1,'ϵͳ����Ա',NULL,NULL,NULL,NULL,1,NULL),
  (3,'���Ź���Ա',NULL,NULL,NULL,NULL,1,NULL),
  (4,'�������Ա',NULL,NULL,NULL,NULL,1,NULL);

COMMIT;

#
# Data for the `admin_user` table  (LIMIT 0,500)
#

INSERT INTO `admin_user` (`id`, `mobile`, `password`, `name`, `mailbox`, `gender`, `birthday`, `idtype`, `idnum`, `country`, `city`, `address`, `create_time`, `modify_time`, `state`, `comments`, `job`, `org_id`, `role_id`, `imei`, `tel`, `can_org`) VALUES 
  (1,'18900000000','8a1df2fa132b5c25','ϵͳ����Ա','',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'2011-11-22 21:56:10',1,'','�������Ա',0,1,NULL,NULL,1),
  (79,'admin','8a1df2fa132b5c25','���ų�������Ա','',0,NULL,NULL,NULL,NULL,NULL,'',NULL,'2011-11-29 16:53:53',1,'','�������Ա',0,1,NULL,'',1),
  (117,'anshun','8a1df2fa132b5c25','��˳','',0,NULL,NULL,NULL,NULL,NULL,'',NULL,'2012-03-21 09:59:20',0,'','�������Ա',62,3,NULL,'',1),
  (118,'duwei','8a1df2fa132b5c25','���','',0,NULL,NULL,NULL,NULL,NULL,'',NULL,'2012-03-21 10:25:51',1,'','�������Ա',64,3,NULL,'',1);

COMMIT;

#
# Data for the `base_menu` table  (LIMIT 0,500)
#

INSERT INTO `base_menu` (`id`, `type`, `name`, `img_url`, `content_url`, `state`, `terminal_type`, `description`, `default_sort_code`, `modify_time`, `download_url`, `package_name`, `is_Initial`, `meeting_type`) VALUES 
  (13,1,'�������','','portal/pri/agenda/agendaList.action?meetingId=',1,'WEB','�������',1,NULL,NULL,NULL,1,NULL),
  (15,3,'��������',NULL,'portal/pri/meeting/getMeetingFilesPager.action?from=portal&meetingId=',1,'WEB','��������',2,NULL,NULL,NULL,1,NULL),
  (16,4,'��������',NULL,'portal/pri/interaction/postList.action?meetingId=',1,'WEB','��������',3,NULL,NULL,NULL,1,NULL),
  (17,5,'�������� ',NULL,'portal/pri/meeting/getDinnerInfo.action?meetingId=',1,'WEB','�������� ',4,NULL,NULL,NULL,1,NULL),
  (18,6,'�Ƶ�ס��',NULL,'portal/pri/meeting/getDinnerInfo.action?meetingId=',0,'WEB','�Ƶ�ס��',5,NULL,NULL,NULL,1,NULL),
  (22,0,'��ҳ',NULL,'wap/pri/meeting/getMeetingById.action?returnType=wap&meeting.id=',1,'WAP','��ҳ',1,NULL,NULL,NULL,1,NULL),
  (23,1,'�������',NULL,'wap/pri/agenda/view.action?meetingId=',1,'WAP','�������',2,NULL,NULL,NULL,1,NULL),
  (25,3,'��������',NULL,'wap/pri/interaction/postView.action?meetingId=',1,'WAP','��������',4,NULL,NULL,NULL,1,NULL),
  (27,5,'�᳡λ��',NULL,'wap/pri/map/view.action?meeting.id=',1,'WAP','�᳡λ��',5,NULL,NULL,NULL,1,NULL),
  (29,7,'��������',NULL,'wap/pri/meeting/showDinner.action?meetingId=',1,'WAP','��������',7,NULL,NULL,NULL,1,NULL),
  (31,0,'��ҳ',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_viewmeeting&meeting.id=',1,'WEB','��ҳ',0,NULL,NULL,NULL,1,NULL),
  (32,5,'�᳡λ��',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_map&meeting.id=',1,'WEB','�᳡λ��',7,NULL,NULL,NULL,1,NULL),
  (37,9,'ͨѶ¼',NULL,'wap/pri/meeting/getMeetingUsers.action?meeting.id=',1,'WAP','ͨѶ¼',9,NULL,NULL,NULL,1,NULL),
  (38,9,'ͨѶ¼',NULL,'portal/pri/meeting/getMeetingUsers.action?meeting.id=',1,'WEB','ͨѶ¼',9,NULL,NULL,NULL,1,NULL),
  (39,10,'վ��˽��',NULL,'portal/pri/message/list.action?meetingId=',1,'WEB','˽��',10,NULL,NULL,NULL,1,NULL),
  (40,10,'վ��˽��',NULL,'wap/pri/message/messagebox.action?meetingId=',1,'WAP','˽��',10,NULL,NULL,NULL,1,NULL),
  (70,6,'ǩ��',NULL,'pages/wap/pri/sign/signIn.jsp?meetingId=',1,'WAP','ǩ��',6,NULL,NULL,NULL,0,NULL),
  (71,11,'ǩ����',NULL,'wap/pri/meeting/signCode.action?meetingId=',1,'WAP','ǩ����',11,NULL,NULL,NULL,1,NULL),
  (72,6,'ǩ��',NULL,'pages/portal/pri/sign/signIn.jsp?meetingId=',1,'WEB','ǩ��',6,NULL,NULL,NULL,0,NULL),
  (73,11,'ǩ����',NULL,'portal/pri/meeting/signCode.action?meetingId=',1,'WEB','ǩ����',11,NULL,NULL,NULL,1,NULL),
  (100,2,'��������','','wap/pri/files/getMeetingFilesPager.action?meetingId=',1,'WAP','��������',3,NULL,NULL,NULL,1,NULL),
  (109,17,'ͶƱ',NULL,'portal/pri/meeting/vote_findEnableVote.action?meetingId=',1,'WEB','ͶƱ����',20,NULL,NULL,NULL,1,NULL),
  (110,1,'ͶƱ',NULL,'wap/pri/vote/vote_findEnableVote.action?meetingId=',1,'WAP','ͶƱ����',1,NULL,NULL,NULL,1,NULL),
  (129,0,'��ҳ',NULL,'wap/pri/meeting/getMeetingById.action?returnType=wap&meeting.id=',1,'WAP','��ҳ',1,NULL,NULL,NULL,1,1),
  (130,1,'ͶƱ',NULL,'wap/pri/vote/vote_findEnableVote.action?meetingId=',1,'WAP','ͶƱ����',1,NULL,NULL,NULL,1,1),
  (131,1,'�������',NULL,'wap/pri/agenda/view.action?meetingId=',1,'WAP','�������',2,NULL,NULL,NULL,1,1),
  (132,2,'��������','','wap/pri/files/getMeetingFilesPager.action?meetingId=',1,'WAP','��������',3,NULL,NULL,NULL,1,1),
  (133,3,'��������',NULL,'wap/pri/interaction/postView.action?meetingId=',1,'WAP','��������',4,NULL,NULL,NULL,1,1),
  (134,5,'�᳡λ��',NULL,'wap/pri/map/view.action?meeting.id=',1,'WAP','�᳡λ��',5,NULL,NULL,NULL,1,1),
  (135,6,'ǩ��',NULL,'pages/wap/pri/sign/signIn.jsp?meetingId=',1,'WAP','ǩ��',6,NULL,NULL,NULL,0,1),
  (136,7,'��������',NULL,'wap/pri/meeting/showDinner.action?meetingId=',1,'WAP','��������',7,NULL,NULL,NULL,1,1),
  (137,9,'ͨѶ¼',NULL,'wap/pri/meeting/getMeetingUsers.action?meeting.id=',1,'WAP','ͨѶ¼',9,NULL,NULL,NULL,1,1),
  (138,10,'վ��˽��',NULL,'wap/pri/message/messagebox.action?meetingId=',1,'WAP','˽��',10,NULL,NULL,NULL,1,1),
  (139,11,'ǩ����',NULL,'wap/pri/meeting/signCode.action?meetingId=',1,'WAP','ǩ����',11,NULL,NULL,NULL,1,1),
  (141,0,'��ҳ',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_viewmeeting&meeting.id=',1,'WEB','��ҳ',0,NULL,NULL,NULL,1,1),
  (142,1,'�������','','portal/pri/agenda/agendaList.action?meetingId=',1,'WEB','�������',1,NULL,NULL,NULL,1,1),
  (143,3,'��������',NULL,'portal/pri/meeting/getMeetingFilesPager.action?from=portal&meetingId=',1,'WEB','��������',2,NULL,NULL,NULL,1,1),
  (144,4,'��������',NULL,'portal/pri/interaction/postList.action?meetingId=',1,'WEB','��������',3,NULL,NULL,NULL,1,1),
  (145,5,'�������� ',NULL,'portal/pri/meeting/getDinnerInfo.action?meetingId=',1,'WEB','�������� ',4,NULL,NULL,NULL,1,1),
  (146,6,'ǩ��',NULL,'pages/portal/pri/sign/signIn.jsp?meetingId=',1,'WEB','ǩ��',6,NULL,NULL,NULL,0,1),
  (147,5,'�᳡λ��',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_map&meeting.id=',1,'WEB','�᳡λ��',7,NULL,NULL,NULL,1,1),
  (148,9,'ͨѶ¼',NULL,'portal/pri/meeting/getMeetingUsers.action?meeting.id=',1,'WEB','ͨѶ¼',9,NULL,NULL,NULL,1,1),
  (149,10,'վ��˽��',NULL,'portal/pri/message/list.action?meetingId=',1,'WEB','˽��',10,NULL,NULL,NULL,1,1),
  (150,11,'ǩ����',NULL,'portal/pri/meeting/signCode.action?meetingId=',1,'WEB','ǩ����',11,NULL,NULL,NULL,1,1),
  (152,17,'ͶƱ',NULL,'portal/pri/meeting/vote_findEnableVote.action?meetingId=',1,'WEB','ͶƱ����',20,NULL,NULL,NULL,1,1),
  (441,1,'ͶƱ',NULL,'wap/pri/vote/vote_findEnableVote.action?meetingId=',1,'WAP','ͶƱ',1,NULL,NULL,NULL,1,NULL),
  (745,3,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,'WEB','�᳡����',8,NULL,NULL,NULL,1,1),
  (746,11,'�ó����� ',NULL,'portal/pri/journey/getJourneyList.action?meetingId=',1,'WEB','�ó����� ',4,NULL,NULL,NULL,0,NULL),
  (748,17,'�ó�����',NULL,'wap/pri/journey/getJourneyList.action?meetingId=',1,'WAP','�ó�����',17,NULL,NULL,NULL,0,NULL),
  (755,1,'�������ز� ',NULL,'portal/pri/reception/specialty_show.action?meetingId=',1,'WEB','�������ز�',18,NULL,NULL,NULL,1,NULL),
  (756,1,'�������ز�',NULL,'wap/pri/reception/specialty_show.action?meetingId=',1,'WAP','�������ز�',18,NULL,NULL,NULL,1,NULL),
  (757,1,'�������ز� ',NULL,'portal/pri/reception/specialty_show.action?meetingId=',1,'WEB','�������ز�',18,NULL,NULL,NULL,1,1),
  (758,1,'�������ز�',NULL,'wap/pri/reception/specialty_show.action?meetingId=',1,'WAP','�������ز�',18,NULL,NULL,NULL,1,1),
  (811,1,'�������� ',NULL,'portal/pri/news/show.action?meetingId=',1,'WEB','��������',5,NULL,NULL,NULL,1,NULL),
  (812,1,'��������',NULL,'wap/pri/news/show.action?meetingId=',1,'WAP','��������',5,NULL,NULL,NULL,1,NULL),
  (813,1,'�������� ',NULL,'portal/pri/news/show.action?meetingId=',1,'WEB','��������',5,NULL,NULL,NULL,1,1),
  (814,1,'��������',NULL,'wap/pri/news/show.action?meetingId=',1,'WAP','��������',5,NULL,NULL,NULL,1,1),
  (815,2,'�齱��Ϣ',NULL,'portal/pri/meeting/lucky_findLuckyHistory.action?meetingId=',1,'WEB','�齱��Ϣ',8,NULL,NULL,NULL,1,NULL),
  (816,5,'�齱��Ϣ',NULL,'wap/pri/lucky/lucky_findLuckyHistory.action?meetingId=',1,'WAP','�齱��Ϣ',10,NULL,NULL,NULL,1,NULL),
  (817,2,'�齱��Ϣ',NULL,'portal/pri/meeting/lucky_findLuckyHistory.action?meetingId=',1,'WEB','�齱��Ϣ',8,NULL,NULL,NULL,1,1),
  (818,5,'�齱��Ϣ',NULL,'wap/pri/lucky/lucky_findLuckyHistory.action?meetingId=',1,'WAP','�齱��Ϣ',10,NULL,NULL,NULL,1,1),
  (819,2,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,'WEB','�᳡����',8,NULL,NULL,NULL,1,NULL),
  (820,5,'�᳡����',NULL,'wap/pri/paper/paper_findEnablePaper.action?meetingId=',1,'WAP','�᳡����',10,NULL,NULL,NULL,1,NULL),
  (822,5,'�᳡����',NULL,'wap/pri/paper/paper_findEnablePaper.action?meetingId=',1,'WAP','�᳡����',10,NULL,NULL,NULL,1,1),
  (823,2,'�α���Ϣ',NULL,'portal/pri/meeting/guest_findAllGuest.action?meetingId=',1,'WEB','�α���Ϣ',8,NULL,NULL,NULL,1,NULL),
  (824,5,'�α���Ϣ',NULL,'wap/pri/guest/guest_findAllGuest.action?meetingId=',1,'WAP','�α���Ϣ',8,NULL,NULL,NULL,1,NULL),
  (825,2,'�α���Ϣ',NULL,'portal/pri/meeting/guest_findAllGuest.action?meetingId=',1,'WEB','�α���Ϣ',8,NULL,NULL,NULL,1,1),
  (826,5,'�α���Ϣ',NULL,'wap/pri/guest/guest_findAllGuest.action?meetingId=',1,'WAP','�α���Ϣ',8,NULL,NULL,NULL,1,1),
  (827,1,'�Ƶ���Ϣ','','portal/pri/hotel/list.action?meetingId=',1,'WEB','�Ƶ���Ϣ',21,NULL,NULL,NULL,1,NULL),
  (828,1,'�Ƶ���Ϣ','','portal/pri/hotel/list.action?meetingId=',1,'WEB','�Ƶ���Ϣ',21,NULL,NULL,NULL,1,1),
  (829,1,'�Ƶ���Ϣ','','wap/pri/hotel/list.action?meetingId=',1,'WAP','�Ƶ���Ϣ',21,NULL,NULL,NULL,1,NULL),
  (830,1,'�Ƶ���Ϣ','','wap/pri/hotel/list.action?meetingId=',1,'WAP','�Ƶ���Ϣ',21,NULL,NULL,NULL,1,1);

COMMIT;

#
# Data for the `base_module_title` table  (LIMIT 0,500)
#

INSERT INTO `base_module_title` (`id`, `base_menu_id`, `meeting_type_id`, `name`, `title_name`, `key_name`, `terminal_type`) VALUES 
  (1,2,-1,'�������','��������','agenda.team.detail.title','CLIENT'),
  (2,2,-1,'�������','��������','agenda.team.others.title','CLIENT'),
  (3,4,-1,'��������','����','interaction.post.title','CLIENT'),
  (4,4,-1,'��������','��������','interaction.reply.title','CLIENT'),
  (5,10,-1,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (6,10,-1,'��������','��������','dinner.team.others.title','CLIENT'),
  (7,5,-1,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (8,11,-1,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (9,708,12,'�������','�������','agenda.team.detail.title','CLIENT'),
  (10,708,12,'�������','�鿴�������۷���','agenda.team.others.title','CLIENT'),
  (11,712,12,'��������','����','interaction.post.title','CLIENT'),
  (12,712,12,'��������','��������','interaction.reply.title','CLIENT'),
  (13,715,12,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (14,715,12,'��������','��������','dinner.team.others.title','CLIENT'),
  (15,716,12,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (16,717,12,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (17,118,1,'�������','��������','agenda.team.detail.title','CLIENT'),
  (18,118,1,'�������','��������','agenda.team.others.title','CLIENT'),
  (19,121,1,'��������','����','interaction.post.title','CLIENT'),
  (20,121,1,'��������','��������','interaction.reply.title','CLIENT'),
  (21,124,1,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (22,124,1,'��������','��������','dinner.team.others.title','CLIENT'),
  (23,125,1,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (24,126,1,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (25,203,2,'��������','����','interaction.post.title','CLIENT'),
  (26,203,2,'��������','��������','interaction.reply.title','CLIENT'),
  (27,206,2,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (28,206,2,'��������','��������','dinner.team.others.title','CLIENT'),
  (29,207,2,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (30,208,2,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (31,241,3,'�������','��������','agenda.team.detail.title','CLIENT'),
  (32,241,3,'�������','��������','agenda.team.others.title','CLIENT'),
  (33,244,3,'��������','����','interaction.post.title','CLIENT'),
  (34,244,3,'��������','��������','interaction.reply.title','CLIENT'),
  (35,247,3,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (36,247,3,'��������','��������','dinner.team.others.title','CLIENT'),
  (37,248,3,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (38,249,3,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (39,323,4,'�������','��������','agenda.team.detail.title','CLIENT'),
  (40,323,4,'�������','��������','agenda.team.others.title','CLIENT'),
  (41,326,4,'��������','����','interaction.post.title','CLIENT'),
  (42,326,4,'��������','��������','interaction.reply.title','CLIENT'),
  (43,329,4,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (44,329,4,'��������','��������','dinner.team.others.title','CLIENT'),
  (45,330,4,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (46,331,4,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (47,405,5,'�������','��������','agenda.team.detail.title','CLIENT'),
  (48,405,5,'�������','��������','agenda.team.others.title','CLIENT'),
  (49,408,5,'��������','����','interaction.post.title','CLIENT'),
  (50,408,5,'��������','��������','interaction.reply.title','CLIENT'),
  (51,411,5,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (52,411,5,'��������','��������','dinner.team.others.title','CLIENT'),
  (53,412,5,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (54,413,5,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (55,621,9,'�������','��������','agenda.team.detail.title','CLIENT'),
  (56,621,9,'�������','��������','agenda.team.others.title','CLIENT'),
  (57,625,9,'��������','����','interaction.post.title','CLIENT'),
  (58,625,9,'��������','��������','interaction.reply.title','CLIENT'),
  (59,628,9,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (60,628,9,'��������','��������','dinner.team.others.title','CLIENT'),
  (61,629,9,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (62,630,9,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (63,11,-1,'˽��','�鿴˽��','privatemsg.view.title','CLIENT'),
  (64,3,-1,'��������','���ع���','file.download.title','CLIENT'),
  (80,120,1,'��������','���ع���','file.download.title','CLIENT'),
  (81,126,1,'˽��','�鿴˽��','privatemsg.view.title','CLIENT'),
  (82,208,2,'˽��','�鿴˽��','privatemsg.view.title','CLIENT'),
  (83,243,3,'��������','���ع���','file.download.title','CLIENT'),
  (84,249,3,'˽��','�鿴˽��','privatemsg.view.title','CLIENT'),
  (85,325,4,'��������','���ع���','file.download.title','CLIENT'),
  (86,331,4,'˽��','�鿴˽��','privatemsg.view.title','CLIENT'),
  (87,407,5,'��������','���ع���','file.download.title','CLIENT'),
  (88,413,5,'˽��','�鿴˽��','privatemsg.view.title','CLIENT'),
  (89,624,9,'��������','���ع���','file.download.title','CLIENT'),
  (90,630,9,'˽��','�鿴˽��','privatemsg.view.title','CLIENT'),
  (91,711,12,'��������','���ع���','file.download.title','CLIENT'),
  (92,717,12,'˽��','�鿴˽��','privatemsg.view.title','CLIENT'),
  (93,6,-1,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (94,122,1,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (95,245,3,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (96,327,4,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (97,409,5,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (98,626,9,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (99,713,12,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (101,765,13,'�������','��������','agenda.team.detail.title','CLIENT'),
  (102,765,13,'�������','��������','agenda.team.others.title','CLIENT'),
  (103,768,13,'��������','���ع���','file.download.title','CLIENT'),
  (104,769,13,'��������','����','interaction.post.title','CLIENT'),
  (105,769,13,'��������','��������','interaction.reply.title','CLIENT'),
  (106,770,13,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (107,772,13,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (108,772,13,'��������','��������','dinner.team.others.title','CLIENT'),
  (109,773,13,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (110,774,13,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (111,774,13,'˽��','�鿴˽��','privatemsg.view.title','CLIENT');

COMMIT;

#
# Data for the `data_dict` table  (LIMIT 0,500)
#

INSERT INTO `data_dict` (`data_type`, `data_type_name`, `data_type_desc`) VALUES 
  ('act_type','�����','�����'),
  ('client_login_bg_pic','�ͻ��˵�¼����ͼƬ','�ͻ��˵�¼����ͼƬ'),
  ('custom_bg_pic','���Ʊ���ͼƬ','���ƵĿͻ��˵�¼����ͼƬ�����û�ѡ��'),
  ('find_back_password','�һ�����','�һ���������'),
  ('menu_type','�˵�����','�˵�����'),
  ('terminal_type','�˵���������','�˵���������');

COMMIT;

#
# Data for the `data_dict_config` table  (LIMIT 0,500)
#

INSERT INTO `data_dict_config` (`id`, `data_type`, `act_type`, `data_code`, `data_name`, `data_desc`, `cond`, `data_value`, `order_by`, `remark`) VALUES 
  (1,'act_type','common','0','����',NULL,NULL,'1',NULL,NULL),
  (2,'act_type','common','1','����',NULL,NULL,'2',NULL,NULL),
  (3,'dinner_type','common','1','������',NULL,NULL,'false',NULL,NULL),
  (4,'dinner_type','common','2','����',NULL,NULL,'false',NULL,NULL),
  (5,'dinner_type','common','3','���',NULL,NULL,'true',NULL,NULL),
  (6,'dinner_type','common','4','����',NULL,NULL,'true',NULL,NULL),
  (7,'dinner_type','common','5','����',NULL,NULL,'false',NULL,NULL),
  (8,'find_back_password','common','1','�һ���������',NULL,NULL,'D',NULL,'D��ʾΪ��̬�һ�,S��ʾ�һ�ԭ����'),
  (10,'terminal_type','common','WEB','WEB�Ż�',NULL,NULL,NULL,NULL,NULL),
  (11,'terminal_type','common','WAP','WAP�Ż�',NULL,NULL,NULL,NULL,NULL),
  (12,'menu_type','common','0','��ҳ����',NULL,NULL,NULL,NULL,NULL),
  (13,'menu_type','common','1','��������',NULL,NULL,NULL,NULL,NULL),
  (14,'menu_type','common','2','���������',NULL,NULL,NULL,NULL,NULL),
  (15,'client_login_bg_pic','common','0','�ͻ��˵�¼����ͼƬ',NULL,NULL,'images/client/default.png',NULL,NULL),
  (17,'custom_bg_pic','common','1','Ĭ��ͼƬ',NULL,NULL,'images/client/default.png',NULL,NULL),
  (18,'vehicle_type','common','����','����',NULL,NULL,NULL,NULL,NULL),
  (19,'vehicle_type','common','С�γ�','С�γ�',NULL,NULL,NULL,NULL,NULL),
  (20,'vehicle_type','common','��ͳ�','��ͳ�',NULL,NULL,NULL,NULL,NULL),
  (21,'vehicle_type','common','�����','�����',NULL,NULL,NULL,NULL,NULL);

COMMIT;

#
# Data for the `meeting_type` table  (LIMIT 0,500)
#

INSERT INTO `meeting_type` (`id`, `name`, `description`, `create_time`, `state`, `logo_image`, `theme_id`) VALUES 
  (1,'����','һ���������','2012-01-13',1,'1330406086506.gif',1);

COMMIT;

#
# Data for the `organization` table  (LIMIT 0,500)
#

INSERT INTO `organization` (`id`, `name`, `address`, `create_time`, `modify_time`, `state`, `comments`, `linker`, `linker_tel`, `level`, `parent_id`, `root_id`) VALUES 
  (0,'վ�����','',NULL,'2011-11-28 13:18:17',1,'','111','',0,NULL,NULL);
UPDATE `organization` SET `id`=0 WHERE `id`=LAST_INSERT_ID();
INSERT INTO `organization` (`id`, `name`, `address`, `create_time`, `modify_time`, `state`, `comments`, `linker`, `linker_tel`, `level`, `parent_id`, `root_id`) VALUES 
  (60,'�����ƶ�ͨ�����޹�˾','',NULL,'2012-02-28 12:38:30',1,'','','',1,0,NULL),
  (62,'��˳�ֹ�˾','',NULL,'2012-03-21 09:59:53',0,'','','',2,0,NULL),
  (63,'��˳�ֹ�˾','',NULL,'2012-03-21 10:00:25',1,'','','',2,60,NULL),
  (64,'ʡ��˾','',NULL,'2012-03-21 10:00:56',1,'','','',2,60,NULL);

COMMIT;

#
# Data for the `page_custom` table  (LIMIT 0,500)
#

INSERT INTO `page_custom` (`id`, `property_name`, `property_value`, `description`, `meeting_id`) VALUES 
  (1,'files_show_type','bookshelf','����������ʾ��ʽ���ã�bookshelfΪ��ܣ�listΪ�б�',164);

COMMIT;

#
# Data for the `page_theme` table  (LIMIT 0,500)
#

INSERT INTO `page_theme` (`id`, `name`, `title`, `description`, `thumbnail_name`, `state`) VALUES 
  (1,'','��ɫ���','ϵͳĬ����ɫ����Ƥ��','images/thumbnail.png',1),
  (3,'green','���ⰻȻ','��ɫ���������Ƥ����ע�����ǲ��������⣩','green/images/thumbnail.png',1),
  (4,'creative','','','creative/images/thumbnail.png',1);

COMMIT;

#
# Data for the `role` table  (LIMIT 0,500)
#

INSERT INTO `role` (`id`, `role_name`, `create_time`, `modify_time`, `creator`, `modifier`, `state`, `comments`) VALUES 
  (1,'��������Ա',NULL,NULL,NULL,NULL,1,NULL),
  (2,'ϵͳ����Ա',NULL,NULL,NULL,NULL,1,NULL),
  (3,'�������Ա',NULL,NULL,NULL,NULL,1,NULL),
  (4,'�����ƿͷ�',NULL,NULL,NULL,NULL,1,NULL),
  (5,'�����Ա',NULL,NULL,NULL,NULL,1,NULL),
  (6,'����������',NULL,NULL,NULL,NULL,1,NULL);

COMMIT;

#
# Data for the `trigger_task` table  (LIMIT 0,500)
#

INSERT INTO `trigger_task` (`id`, `meeting_id`, `trigger_notify`, `delay_time`, `send_sms`, `display_welcome`, `send_meeting_agenda`, `send_other_Info`, `other_info`, `sms_template`) VALUES 
  (1,NULL,0,0,0,0,0,0,NULL,'��ӭ{username}����᳡��');

COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
