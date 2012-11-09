# SQL Manager 2005 for MySQL 3.6.5.8
# ---------------------------------------
# Host     : 180.168.71.6
# Port     : 8098
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
  (79,'admin','8a1df2fa132b5c25','���ų�������Ա','',0,NULL,NULL,NULL,NULL,NULL,'',NULL,'2011-11-29 16:53:53',1,'','�������Ա',0,1,NULL,'',1);

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
# Data for the `client_menu` table  (LIMIT 0,500)
#

INSERT INTO `client_menu` (`id`, `type`, `name`, `img_url`, `content_url`, `state`, `modify_time`, `terminal_type`, `description`, `meeting_id`, `menu_type`, `default_sort_code`, `content_id`, `base_menu_id`, `package_name`, `download_url`, `is_Initial`) VALUES 
  (2672,0,'��ҳ',NULL,'wap/pri/meeting/getMeetingById.action?returnType=wap&meeting.id=',1,NULL,'WAP','��ҳ',157,'SYSTEM',1,NULL,129,NULL,NULL,1),
  (2673,1,'ͶƱ',NULL,'wap/pri/vote/vote_findEnableVote.action?meetingId=',1,NULL,'WAP','ͶƱ����',157,'SYSTEM',1,NULL,130,NULL,NULL,1),
  (2674,1,'�������',NULL,'wap/pri/agenda/view.action?meetingId=',1,NULL,'WAP','�������',157,'SYSTEM',2,NULL,131,NULL,NULL,1),
  (2675,2,'��������','','wap/pri/files/getMeetingFilesPager.action?meetingId=',1,NULL,'WAP','��������',157,'SYSTEM',3,NULL,132,NULL,NULL,1),
  (2676,3,'��������',NULL,'wap/pri/interaction/postView.action?meetingId=',1,NULL,'WAP','��������',157,'SYSTEM',4,NULL,133,NULL,NULL,1),
  (2677,5,'�᳡λ��',NULL,'wap/pri/map/view.action?meeting.id=',1,NULL,'WAP','�᳡λ��',157,'SYSTEM',5,NULL,134,NULL,NULL,1),
  (2678,6,'ǩ��',NULL,'pages/wap/pri/sign/signIn.jsp?meetingId=',1,NULL,'WAP','ǩ��',157,'SYSTEM',6,NULL,135,NULL,NULL,0),
  (2679,7,'��������',NULL,'wap/pri/meeting/showDinner.action?meetingId=',1,NULL,'WAP','��������',157,'SYSTEM',7,NULL,136,NULL,NULL,1),
  (2680,9,'ͨѶ¼',NULL,'wap/pri/meeting/getMeetingUsers.action?meeting.id=',1,NULL,'WAP','ͨѶ¼',157,'SYSTEM',9,NULL,137,NULL,NULL,1),
  (2681,10,'վ��˽��',NULL,'wap/pri/message/messagebox.action?meetingId=',1,NULL,'WAP','˽��',157,'SYSTEM',10,NULL,138,NULL,NULL,1),
  (2682,11,'ǩ����',NULL,'wap/pri/meeting/signCode.action?meetingId=',1,NULL,'WAP','ǩ����',157,'SYSTEM',11,NULL,139,NULL,NULL,1),
  (2684,0,'��ҳ',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_viewmeeting&meeting.id=',1,NULL,'WEB','��ҳ',157,'SYSTEM',0,NULL,141,NULL,NULL,1),
  (2685,1,'�������','','portal/pri/agenda/agendaList.action?meetingId=',1,NULL,'WEB','�������',157,'SYSTEM',1,NULL,142,NULL,NULL,1),
  (2686,3,'��������',NULL,'portal/pri/meeting/getMeetingFilesPager.action?from=portal&meetingId=',1,NULL,'WEB','��������',157,'SYSTEM',2,NULL,143,NULL,NULL,1),
  (2687,4,'��������',NULL,'portal/pri/interaction/postList.action?meetingId=',1,NULL,'WEB','��������',157,'SYSTEM',3,NULL,144,NULL,NULL,1),
  (2688,5,'�������� ',NULL,'portal/pri/meeting/getDinnerInfo.action?meetingId=',1,NULL,'WEB','�������� ',157,'SYSTEM',4,NULL,145,NULL,NULL,1),
  (2689,6,'ǩ��',NULL,'pages/portal/pri/sign/signIn.jsp?meetingId=',1,NULL,'WEB','ǩ��',157,'SYSTEM',6,NULL,146,NULL,NULL,0),
  (2690,5,'�᳡λ��',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_map&meeting.id=',1,NULL,'WEB','�᳡λ��',157,'SYSTEM',7,NULL,147,NULL,NULL,1),
  (2691,9,'ͨѶ¼',NULL,'portal/pri/meeting/getMeetingUsers.action?meeting.id=',1,NULL,'WEB','ͨѶ¼',157,'SYSTEM',9,NULL,148,NULL,NULL,1),
  (2692,10,'վ��˽��',NULL,'portal/pri/message/list.action?meetingId=',1,NULL,'WEB','˽��',157,'SYSTEM',10,NULL,149,NULL,NULL,1),
  (2693,11,'ǩ����',NULL,'portal/pri/meeting/signCode.action?meetingId=',1,NULL,'WEB','ǩ����',157,'SYSTEM',11,NULL,150,NULL,NULL,1),
  (2695,17,'ͶƱ',NULL,'portal/pri/meeting/vote_findEnableVote.action?meetingId=',1,NULL,'WEB','ͶƱ����',157,'SYSTEM',20,NULL,152,NULL,NULL,1),
  (2696,3,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,NULL,'WEB','�᳡����',157,'SYSTEM',8,NULL,745,NULL,NULL,1),
  (2697,1,'�������ز� ',NULL,'portal/pri/reception/specialty_show.action?meetingId=',1,NULL,'WEB','�������ز�',157,'SYSTEM',18,NULL,757,NULL,NULL,1),
  (2698,1,'�������ز�',NULL,'wap/pri/reception/specialty_show.action?meetingId=',1,NULL,'WAP','�������ز�',157,'SYSTEM',18,NULL,758,NULL,NULL,1),
  (2716,0,'��ҳ',NULL,'wap/pri/meeting/getMeetingById.action?returnType=wap&meeting.id=',1,NULL,'WAP','��ҳ',158,'SYSTEM',1,NULL,129,NULL,NULL,1),
  (2717,1,'ͶƱ',NULL,'wap/pri/vote/vote_findEnableVote.action?meetingId=',1,NULL,'WAP','ͶƱ����',158,'SYSTEM',1,NULL,130,NULL,NULL,1),
  (2718,1,'�������',NULL,'wap/pri/agenda/view.action?meetingId=',1,NULL,'WAP','�������',158,'SYSTEM',2,NULL,131,NULL,NULL,1),
  (2719,2,'��������','','wap/pri/files/getMeetingFilesPager.action?meetingId=',1,NULL,'WAP','��������',158,'SYSTEM',3,NULL,132,NULL,NULL,1),
  (2720,3,'��������',NULL,'wap/pri/interaction/postView.action?meetingId=',1,NULL,'WAP','��������',158,'SYSTEM',4,NULL,133,NULL,NULL,1),
  (2721,5,'�᳡λ��',NULL,'wap/pri/map/view.action?meeting.id=',1,NULL,'WAP','�᳡λ��',158,'SYSTEM',5,NULL,134,NULL,NULL,1),
  (2722,6,'ǩ��',NULL,'pages/wap/pri/sign/signIn.jsp?meetingId=',1,NULL,'WAP','ǩ��',158,'SYSTEM',6,NULL,135,NULL,NULL,0),
  (2723,7,'��������',NULL,'wap/pri/meeting/showDinner.action?meetingId=',1,NULL,'WAP','��������',158,'SYSTEM',7,NULL,136,NULL,NULL,1),
  (2724,9,'ͨѶ¼',NULL,'wap/pri/meeting/getMeetingUsers.action?meeting.id=',1,NULL,'WAP','ͨѶ¼',158,'SYSTEM',9,NULL,137,NULL,NULL,1),
  (2725,10,'վ��˽��',NULL,'wap/pri/message/messagebox.action?meetingId=',1,NULL,'WAP','˽��',158,'SYSTEM',10,NULL,138,NULL,NULL,1),
  (2726,11,'ǩ����',NULL,'wap/pri/meeting/signCode.action?meetingId=',1,NULL,'WAP','ǩ����',158,'SYSTEM',11,NULL,139,NULL,NULL,1),
  (2728,0,'��ҳ',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_viewmeeting&meeting.id=',1,NULL,'WEB','��ҳ',158,'SYSTEM',0,NULL,141,NULL,NULL,1),
  (2729,1,'�������','','portal/pri/agenda/agendaList.action?meetingId=',1,NULL,'WEB','�������',158,'SYSTEM',1,NULL,142,NULL,NULL,1),
  (2730,3,'��������',NULL,'portal/pri/meeting/getMeetingFilesPager.action?from=portal&meetingId=',1,NULL,'WEB','��������',158,'SYSTEM',2,NULL,143,NULL,NULL,1),
  (2731,4,'��������',NULL,'portal/pri/interaction/postList.action?meetingId=',1,NULL,'WEB','��������',158,'SYSTEM',3,NULL,144,NULL,NULL,1),
  (2732,5,'�������� ',NULL,'portal/pri/meeting/getDinnerInfo.action?meetingId=',1,NULL,'WEB','�������� ',158,'SYSTEM',4,NULL,145,NULL,NULL,1),
  (2733,6,'ǩ��',NULL,'pages/portal/pri/sign/signIn.jsp?meetingId=',1,NULL,'WEB','ǩ��',158,'SYSTEM',6,NULL,146,NULL,NULL,0),
  (2734,5,'�᳡λ��',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_map&meeting.id=',1,NULL,'WEB','�᳡λ��',158,'SYSTEM',7,NULL,147,NULL,NULL,1),
  (2735,9,'ͨѶ¼',NULL,'portal/pri/meeting/getMeetingUsers.action?meeting.id=',1,NULL,'WEB','ͨѶ¼',158,'SYSTEM',9,NULL,148,NULL,NULL,1),
  (2736,10,'վ��˽��',NULL,'portal/pri/message/list.action?meetingId=',1,NULL,'WEB','˽��',158,'SYSTEM',10,NULL,149,NULL,NULL,1),
  (2737,11,'ǩ����',NULL,'portal/pri/meeting/signCode.action?meetingId=',1,NULL,'WEB','ǩ����',158,'SYSTEM',11,NULL,150,NULL,NULL,1),
  (2739,17,'ͶƱ',NULL,'portal/pri/meeting/vote_findEnableVote.action?meetingId=',1,NULL,'WEB','ͶƱ����',158,'SYSTEM',20,NULL,152,NULL,NULL,1),
  (2740,3,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,NULL,'WEB','�᳡����',158,'SYSTEM',8,NULL,745,NULL,NULL,1),
  (2741,1,'�������ز� ',NULL,'portal/pri/reception/specialty_show.action?meetingId=',1,NULL,'WEB','�������ز�',158,'SYSTEM',18,NULL,757,NULL,NULL,1),
  (2742,1,'�������ز�',NULL,'wap/pri/reception/specialty_show.action?meetingId=',1,NULL,'WAP','�������ز�',158,'SYSTEM',18,NULL,758,NULL,NULL,1),
  (2760,0,'��ҳ',NULL,'wap/pri/meeting/getMeetingById.action?returnType=wap&meeting.id=',1,NULL,'WAP','��ҳ',159,'SYSTEM',1,NULL,129,NULL,NULL,1),
  (2761,1,'ͶƱ',NULL,'wap/pri/vote/vote_findEnableVote.action?meetingId=',1,NULL,'WAP','ͶƱ����',159,'SYSTEM',1,NULL,130,NULL,NULL,1),
  (2762,1,'�������',NULL,'wap/pri/agenda/view.action?meetingId=',1,NULL,'WAP','�������',159,'SYSTEM',2,NULL,131,NULL,NULL,1),
  (2763,2,'��������','','wap/pri/files/getMeetingFilesPager.action?meetingId=',1,NULL,'WAP','��������',159,'SYSTEM',3,NULL,132,NULL,NULL,1),
  (2764,3,'��������',NULL,'wap/pri/interaction/postView.action?meetingId=',1,NULL,'WAP','��������',159,'SYSTEM',4,NULL,133,NULL,NULL,1),
  (2765,5,'�᳡λ��',NULL,'wap/pri/map/view.action?meeting.id=',1,NULL,'WAP','�᳡λ��',159,'SYSTEM',5,NULL,134,NULL,NULL,1),
  (2766,6,'ǩ��',NULL,'pages/wap/pri/sign/signIn.jsp?meetingId=',1,NULL,'WAP','ǩ��',159,'SYSTEM',6,NULL,135,NULL,NULL,0),
  (2767,7,'��������',NULL,'wap/pri/meeting/showDinner.action?meetingId=',1,NULL,'WAP','��������',159,'SYSTEM',7,NULL,136,NULL,NULL,1),
  (2768,9,'ͨѶ¼',NULL,'wap/pri/meeting/getMeetingUsers.action?meeting.id=',1,NULL,'WAP','ͨѶ¼',159,'SYSTEM',9,NULL,137,NULL,NULL,1),
  (2769,10,'վ��˽��',NULL,'wap/pri/message/messagebox.action?meetingId=',1,NULL,'WAP','˽��',159,'SYSTEM',10,NULL,138,NULL,NULL,1),
  (2770,11,'ǩ����',NULL,'wap/pri/meeting/signCode.action?meetingId=',1,NULL,'WAP','ǩ����',159,'SYSTEM',11,NULL,139,NULL,NULL,1),
  (2772,0,'��ҳ',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_viewmeeting&meeting.id=',1,NULL,'WEB','��ҳ',159,'SYSTEM',0,NULL,141,NULL,NULL,1),
  (2773,1,'�������','','portal/pri/agenda/agendaList.action?meetingId=',1,NULL,'WEB','�������',159,'SYSTEM',1,NULL,142,NULL,NULL,1),
  (2774,3,'��������',NULL,'portal/pri/meeting/getMeetingFilesPager.action?from=portal&meetingId=',1,NULL,'WEB','��������',159,'SYSTEM',2,NULL,143,NULL,NULL,1),
  (2775,4,'��������',NULL,'portal/pri/interaction/postList.action?meetingId=',1,NULL,'WEB','��������',159,'SYSTEM',3,NULL,144,NULL,NULL,1),
  (2776,5,'�������� ',NULL,'portal/pri/meeting/getDinnerInfo.action?meetingId=',1,NULL,'WEB','�������� ',159,'SYSTEM',4,NULL,145,NULL,NULL,1),
  (2777,6,'ǩ��',NULL,'pages/portal/pri/sign/signIn.jsp?meetingId=',1,NULL,'WEB','ǩ��',159,'SYSTEM',6,NULL,146,NULL,NULL,0),
  (2778,5,'�᳡λ��',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_map&meeting.id=',1,NULL,'WEB','�᳡λ��',159,'SYSTEM',7,NULL,147,NULL,NULL,1),
  (2779,9,'ͨѶ¼',NULL,'portal/pri/meeting/getMeetingUsers.action?meeting.id=',1,NULL,'WEB','ͨѶ¼',159,'SYSTEM',9,NULL,148,NULL,NULL,1),
  (2780,10,'վ��˽��',NULL,'portal/pri/message/list.action?meetingId=',1,NULL,'WEB','˽��',159,'SYSTEM',10,NULL,149,NULL,NULL,1),
  (2781,11,'ǩ����',NULL,'portal/pri/meeting/signCode.action?meetingId=',1,NULL,'WEB','ǩ����',159,'SYSTEM',11,NULL,150,NULL,NULL,1),
  (2783,17,'ͶƱ',NULL,'portal/pri/meeting/vote_findEnableVote.action?meetingId=',1,NULL,'WEB','ͶƱ����',159,'SYSTEM',20,NULL,152,NULL,NULL,1),
  (2784,3,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,NULL,'WEB','�᳡����',159,'SYSTEM',8,NULL,745,NULL,NULL,1),
  (2785,1,'�������ز� ',NULL,'portal/pri/reception/specialty_show.action?meetingId=',1,NULL,'WEB','�������ز�',159,'SYSTEM',18,NULL,757,NULL,NULL,1),
  (2786,1,'�������ز�',NULL,'wap/pri/reception/specialty_show.action?meetingId=',1,NULL,'WAP','�������ز�',159,'SYSTEM',18,NULL,758,NULL,NULL,1),
  (2787,1,'�Ƶ���Ϣ','','portal/pri/hotel/list.action?meetingId=',1,'2012-03-12 17:53:42','WEB','�Ƶ���Ϣ',159,'SYSTEM',21,NULL,808,NULL,NULL,1),
  (2788,1,'�Ƶ���Ϣ','','wap/pri/hotel/list.action?meetingId=',1,'2012-03-12 17:53:24','WAP','�Ƶ���Ϣ',159,'SYSTEM',21,NULL,810,NULL,NULL,1),
  (2789,1,'�������� ',NULL,'portal/pri/news/show.action?meetingId=',1,NULL,'WEB','��������',159,'SYSTEM',5,NULL,813,NULL,NULL,1),
  (2790,1,'��������',NULL,'wap/pri/news/show.action?meetingId=',1,NULL,'WAP','��������',159,'SYSTEM',5,NULL,814,NULL,NULL,1),
  (2791,2,'�齱��Ϣ',NULL,'portal/pri/meeting/lucky_findLuckyHistory.action?meetingId=',1,NULL,'WEB','�齱��Ϣ',159,'SYSTEM',8,NULL,817,NULL,NULL,1),
  (2792,5,'�齱��Ϣ',NULL,'wap/pri/lucky/lucky_findLuckyHistory.action?meetingId=',1,NULL,'WAP','�齱��Ϣ',159,'SYSTEM',10,NULL,818,NULL,NULL,1),
  (2793,2,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,NULL,'WEB','�᳡����',159,'SYSTEM',8,NULL,821,NULL,NULL,1),
  (2794,5,'�᳡����',NULL,'wap/pri/paper/paper_findEnablePaper.action?meetingId=',1,NULL,'WAP','�᳡����',159,'SYSTEM',10,NULL,822,NULL,NULL,1),
  (2795,2,'�α���Ϣ',NULL,'portal/pri/meeting/guest_findAllGuest.action?meetingId=',1,NULL,'WEB','�α���Ϣ',159,'SYSTEM',8,NULL,825,NULL,NULL,1),
  (2796,5,'�α���Ϣ',NULL,'wap/pri/guest/guest_findAllGuest.action?meetingId=',1,NULL,'WAP','�α���Ϣ',159,'SYSTEM',8,NULL,826,NULL,NULL,1),
  (2814,0,'��ҳ',NULL,'wap/pri/meeting/getMeetingById.action?returnType=wap&meeting.id=',1,NULL,'WAP','��ҳ',160,'SYSTEM',1,NULL,129,NULL,NULL,1),
  (2815,1,'ͶƱ',NULL,'wap/pri/vote/vote_findEnableVote.action?meetingId=',1,NULL,'WAP','ͶƱ����',160,'SYSTEM',1,NULL,130,NULL,NULL,1),
  (2816,1,'�������',NULL,'wap/pri/agenda/view.action?meetingId=',1,NULL,'WAP','�������',160,'SYSTEM',2,NULL,131,NULL,NULL,1),
  (2817,2,'��������','','wap/pri/files/getMeetingFilesPager.action?meetingId=',1,NULL,'WAP','��������',160,'SYSTEM',3,NULL,132,NULL,NULL,1),
  (2818,3,'��������',NULL,'wap/pri/interaction/postView.action?meetingId=',1,NULL,'WAP','��������',160,'SYSTEM',4,NULL,133,NULL,NULL,1),
  (2819,5,'�᳡λ��',NULL,'wap/pri/map/view.action?meeting.id=',1,NULL,'WAP','�᳡λ��',160,'SYSTEM',5,NULL,134,NULL,NULL,1),
  (2820,6,'ǩ��',NULL,'pages/wap/pri/sign/signIn.jsp?meetingId=',1,NULL,'WAP','ǩ��',160,'SYSTEM',6,NULL,135,NULL,NULL,0),
  (2821,7,'��������',NULL,'wap/pri/meeting/showDinner.action?meetingId=',1,NULL,'WAP','��������',160,'SYSTEM',7,NULL,136,NULL,NULL,1),
  (2822,9,'ͨѶ¼',NULL,'wap/pri/meeting/getMeetingUsers.action?meeting.id=',1,NULL,'WAP','ͨѶ¼',160,'SYSTEM',9,NULL,137,NULL,NULL,1),
  (2823,10,'վ��˽��',NULL,'wap/pri/message/messagebox.action?meetingId=',1,NULL,'WAP','˽��',160,'SYSTEM',10,NULL,138,NULL,NULL,1),
  (2824,11,'ǩ����',NULL,'wap/pri/meeting/signCode.action?meetingId=',1,NULL,'WAP','ǩ����',160,'SYSTEM',11,NULL,139,NULL,NULL,1),
  (2826,0,'��ҳ',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_viewmeeting&meeting.id=',1,NULL,'WEB','��ҳ',160,'SYSTEM',0,NULL,141,NULL,NULL,1),
  (2827,1,'�������','','portal/pri/agenda/agendaList.action?meetingId=',1,NULL,'WEB','�������',160,'SYSTEM',1,NULL,142,NULL,NULL,1),
  (2828,3,'��������',NULL,'portal/pri/meeting/getMeetingFilesPager.action?from=portal&meetingId=',1,NULL,'WEB','��������',160,'SYSTEM',2,NULL,143,NULL,NULL,1),
  (2829,4,'��������',NULL,'portal/pri/interaction/postList.action?meetingId=',1,NULL,'WEB','��������',160,'SYSTEM',3,NULL,144,NULL,NULL,1),
  (2830,5,'�������� ',NULL,'portal/pri/meeting/getDinnerInfo.action?meetingId=',1,NULL,'WEB','�������� ',160,'SYSTEM',4,NULL,145,NULL,NULL,1),
  (2831,6,'ǩ��',NULL,'pages/portal/pri/sign/signIn.jsp?meetingId=',1,NULL,'WEB','ǩ��',160,'SYSTEM',6,NULL,146,NULL,NULL,0),
  (2832,5,'�᳡λ��',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_map&meeting.id=',1,NULL,'WEB','�᳡λ��',160,'SYSTEM',7,NULL,147,NULL,NULL,1),
  (2833,9,'ͨѶ¼',NULL,'portal/pri/meeting/getMeetingUsers.action?meeting.id=',1,NULL,'WEB','ͨѶ¼',160,'SYSTEM',9,NULL,148,NULL,NULL,1),
  (2834,10,'վ��˽��',NULL,'portal/pri/message/list.action?meetingId=',1,NULL,'WEB','˽��',160,'SYSTEM',10,NULL,149,NULL,NULL,1),
  (2835,11,'ǩ����',NULL,'portal/pri/meeting/signCode.action?meetingId=',1,NULL,'WEB','ǩ����',160,'SYSTEM',11,NULL,150,NULL,NULL,1),
  (2837,17,'ͶƱ',NULL,'portal/pri/meeting/vote_findEnableVote.action?meetingId=',1,NULL,'WEB','ͶƱ����',160,'SYSTEM',20,NULL,152,NULL,NULL,1),
  (2838,3,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,NULL,'WEB','�᳡����',160,'SYSTEM',8,NULL,745,NULL,NULL,1),
  (2839,1,'�������ز� ',NULL,'portal/pri/reception/specialty_show.action?meetingId=',1,NULL,'WEB','�������ز�',160,'SYSTEM',18,NULL,757,NULL,NULL,1),
  (2840,1,'�������ز�',NULL,'wap/pri/reception/specialty_show.action?meetingId=',1,NULL,'WAP','�������ز�',160,'SYSTEM',18,NULL,758,NULL,NULL,1),
  (2841,1,'酒店信息','','portal/pri/hotel/list.action?meetingId=',1,NULL,'WEB','酒店信息',160,'SYSTEM',21,NULL,808,NULL,NULL,1),
  (2842,1,'酒店信息','','wap/pri/hotel/list.action?meetingId=',1,NULL,'WAP','酒店信息',160,'SYSTEM',21,NULL,810,NULL,NULL,1),
  (2843,1,'�������� ',NULL,'portal/pri/news/show.action?meetingId=',1,NULL,'WEB','��������',160,'SYSTEM',5,NULL,813,NULL,NULL,1),
  (2844,1,'��������',NULL,'wap/pri/news/show.action?meetingId=',1,NULL,'WAP','��������',160,'SYSTEM',5,NULL,814,NULL,NULL,1),
  (2845,2,'�齱��Ϣ',NULL,'portal/pri/meeting/lucky_findLuckyHistory.action?meetingId=',1,NULL,'WEB','�齱��Ϣ',160,'SYSTEM',8,NULL,817,NULL,NULL,1),
  (2846,5,'�齱��Ϣ',NULL,'wap/pri/lucky/lucky_findLuckyHistory.action?meetingId=',1,NULL,'WAP','�齱��Ϣ',160,'SYSTEM',10,NULL,818,NULL,NULL,1),
  (2847,2,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,NULL,'WEB','�᳡����',160,'SYSTEM',8,NULL,821,NULL,NULL,1),
  (2848,5,'�᳡����',NULL,'wap/pri/paper/paper_findEnablePaper.action?meetingId=',1,NULL,'WAP','�᳡����',160,'SYSTEM',10,NULL,822,NULL,NULL,1),
  (2849,2,'�α���Ϣ',NULL,'portal/pri/meeting/guest_findAllGuest.action?meetingId=',1,NULL,'WEB','�α���Ϣ',160,'SYSTEM',8,NULL,825,NULL,NULL,1),
  (2850,5,'�α���Ϣ',NULL,'wap/pri/guest/guest_findAllGuest.action?meetingId=',1,NULL,'WAP','�α���Ϣ',160,'SYSTEM',8,NULL,826,NULL,NULL,1),
  (2851,0,'��ҳ',NULL,'wap/pri/meeting/getMeetingById.action?returnType=wap&meeting.id=',1,NULL,'WAP','��ҳ',161,'SYSTEM',1,NULL,129,NULL,NULL,1),
  (2852,1,'ͶƱ',NULL,'wap/pri/vote/vote_findEnableVote.action?meetingId=',1,NULL,'WAP','ͶƱ����',161,'SYSTEM',1,NULL,130,NULL,NULL,1),
  (2853,1,'�������',NULL,'wap/pri/agenda/view.action?meetingId=',1,NULL,'WAP','�������',161,'SYSTEM',2,NULL,131,NULL,NULL,1),
  (2854,2,'��������','','wap/pri/files/getMeetingFilesPager.action?meetingId=',1,NULL,'WAP','��������',161,'SYSTEM',3,NULL,132,NULL,NULL,1),
  (2855,3,'��������',NULL,'wap/pri/interaction/postView.action?meetingId=',1,NULL,'WAP','��������',161,'SYSTEM',4,NULL,133,NULL,NULL,1),
  (2856,5,'�᳡λ��',NULL,'wap/pri/map/view.action?meeting.id=',1,NULL,'WAP','�᳡λ��',161,'SYSTEM',5,NULL,134,NULL,NULL,1),
  (2857,6,'ǩ��',NULL,'pages/wap/pri/sign/signIn.jsp?meetingId=',1,NULL,'WAP','ǩ��',161,'SYSTEM',6,NULL,135,NULL,NULL,0),
  (2858,7,'��������',NULL,'wap/pri/meeting/showDinner.action?meetingId=',1,NULL,'WAP','��������',161,'SYSTEM',7,NULL,136,NULL,NULL,1),
  (2859,9,'ͨѶ¼',NULL,'wap/pri/meeting/getMeetingUsers.action?meeting.id=',1,NULL,'WAP','ͨѶ¼',161,'SYSTEM',9,NULL,137,NULL,NULL,1),
  (2860,10,'վ��˽��',NULL,'wap/pri/message/messagebox.action?meetingId=',1,NULL,'WAP','˽��',161,'SYSTEM',10,NULL,138,NULL,NULL,1),
  (2861,11,'ǩ����',NULL,'wap/pri/meeting/signCode.action?meetingId=',1,NULL,'WAP','ǩ����',161,'SYSTEM',11,NULL,139,NULL,NULL,1),
  (2863,0,'��ҳ',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_viewmeeting&meeting.id=',1,NULL,'WEB','��ҳ',161,'SYSTEM',0,NULL,141,NULL,NULL,1),
  (2864,1,'�������','','portal/pri/agenda/agendaList.action?meetingId=',1,NULL,'WEB','�������',161,'SYSTEM',1,NULL,142,NULL,NULL,1),
  (2865,3,'��������',NULL,'portal/pri/meeting/getMeetingFilesPager.action?from=portal&meetingId=',1,NULL,'WEB','��������',161,'SYSTEM',2,NULL,143,NULL,NULL,1),
  (2866,4,'��������',NULL,'portal/pri/interaction/postList.action?meetingId=',1,NULL,'WEB','��������',161,'SYSTEM',3,NULL,144,NULL,NULL,1),
  (2867,5,'�������� ',NULL,'portal/pri/meeting/getDinnerInfo.action?meetingId=',1,NULL,'WEB','�������� ',161,'SYSTEM',4,NULL,145,NULL,NULL,1),
  (2868,6,'ǩ��',NULL,'pages/portal/pri/sign/signIn.jsp?meetingId=',1,NULL,'WEB','ǩ��',161,'SYSTEM',6,NULL,146,NULL,NULL,0),
  (2869,5,'�᳡λ��',NULL,'portal/pri/meeting/getMeetingById.action?returnType=portal_map&meeting.id=',1,NULL,'WEB','�᳡λ��',161,'SYSTEM',7,NULL,147,NULL,NULL,1),
  (2870,9,'ͨѶ¼',NULL,'portal/pri/meeting/getMeetingUsers.action?meeting.id=',1,NULL,'WEB','ͨѶ¼',161,'SYSTEM',9,NULL,148,NULL,NULL,1),
  (2871,10,'վ��˽��',NULL,'portal/pri/message/list.action?meetingId=',1,NULL,'WEB','˽��',161,'SYSTEM',10,NULL,149,NULL,NULL,1),
  (2872,11,'ǩ����',NULL,'portal/pri/meeting/signCode.action?meetingId=',1,NULL,'WEB','ǩ����',161,'SYSTEM',11,NULL,150,NULL,NULL,1),
  (2874,17,'ͶƱ',NULL,'portal/pri/meeting/vote_findEnableVote.action?meetingId=',1,NULL,'WEB','ͶƱ����',161,'SYSTEM',20,NULL,152,NULL,NULL,1),
  (2875,3,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,NULL,'WEB','�᳡����',161,'SYSTEM',8,NULL,745,NULL,NULL,1),
  (2876,1,'�������ز� ',NULL,'portal/pri/reception/specialty_show.action?meetingId=',1,NULL,'WEB','�������ز�',161,'SYSTEM',18,NULL,757,NULL,NULL,1),
  (2877,1,'�������ز�',NULL,'wap/pri/reception/specialty_show.action?meetingId=',1,NULL,'WAP','�������ز�',161,'SYSTEM',18,NULL,758,NULL,NULL,1),
  (2878,1,'�������� ',NULL,'portal/pri/news/show.action?meetingId=',1,NULL,'WEB','��������',161,'SYSTEM',5,NULL,813,NULL,NULL,1),
  (2879,1,'��������',NULL,'wap/pri/news/show.action?meetingId=',1,NULL,'WAP','��������',161,'SYSTEM',5,NULL,814,NULL,NULL,1),
  (2880,2,'�齱��Ϣ',NULL,'portal/pri/meeting/lucky_findLuckyHistory.action?meetingId=',1,NULL,'WEB','�齱��Ϣ',161,'SYSTEM',8,NULL,817,NULL,NULL,1),
  (2881,5,'�齱��Ϣ',NULL,'wap/pri/lucky/lucky_findLuckyHistory.action?meetingId=',1,NULL,'WAP','�齱��Ϣ',161,'SYSTEM',10,NULL,818,NULL,NULL,1),
  (2882,2,'�᳡����',NULL,'portal/pri/meeting/paper_findEnablePaper.action?meetingId=',1,NULL,'WEB','�᳡����',161,'SYSTEM',8,NULL,821,NULL,NULL,1),
  (2883,5,'�᳡����',NULL,'wap/pri/paper/paper_findEnablePaper.action?meetingId=',1,NULL,'WAP','�᳡����',161,'SYSTEM',10,NULL,822,NULL,NULL,1),
  (2884,2,'�α���Ϣ',NULL,'portal/pri/meeting/guest_findAllGuest.action?meetingId=',1,NULL,'WEB','�α���Ϣ',161,'SYSTEM',8,NULL,825,NULL,NULL,1),
  (2885,5,'�α���Ϣ',NULL,'wap/pri/guest/guest_findAllGuest.action?meetingId=',1,NULL,'WAP','�α���Ϣ',161,'SYSTEM',8,NULL,826,NULL,NULL,1),
  (2886,1,'�Ƶ���Ϣ','','portal/pri/hotel/list.action?meetingId=',1,NULL,'WEB','�Ƶ���Ϣ',161,'SYSTEM',21,NULL,828,NULL,NULL,1),
  (2887,1,'�Ƶ���Ϣ','','wap/pri/hotel/list.action?meetingId=',1,NULL,'WAP','�Ƶ���Ϣ',161,'SYSTEM',21,NULL,830,NULL,NULL,1),
  (2888,1,'�������� ',NULL,'portal/pri/news/show.action?meetingId=',1,NULL,'WEB','��������',158,'SYSTEM',5,NULL,813,NULL,NULL,1),
  (2889,1,'��������',NULL,'wap/pri/news/show.action?meetingId=',1,NULL,'WAP','��������',158,'SYSTEM',5,NULL,814,NULL,NULL,1),
  (2890,2,'�齱��Ϣ',NULL,'portal/pri/meeting/lucky_findLuckyHistory.action?meetingId=',1,NULL,'WEB','�齱��Ϣ',158,'SYSTEM',8,NULL,817,NULL,NULL,1),
  (2891,5,'�齱��Ϣ',NULL,'wap/pri/lucky/lucky_findLuckyHistory.action?meetingId=',1,NULL,'WAP','�齱��Ϣ',158,'SYSTEM',10,NULL,818,NULL,NULL,1),
  (2893,5,'�᳡����',NULL,'wap/pri/paper/paper_findEnablePaper.action?meetingId=',1,NULL,'WAP','�᳡����',158,'SYSTEM',10,NULL,822,NULL,NULL,1),
  (2894,2,'�α���Ϣ',NULL,'portal/pri/meeting/guest_findAllGuest.action?meetingId=',1,NULL,'WEB','�α���Ϣ',158,'SYSTEM',8,NULL,825,NULL,NULL,1),
  (2895,5,'�α���Ϣ',NULL,'wap/pri/guest/guest_findAllGuest.action?meetingId=',1,NULL,'WAP','�α���Ϣ',158,'SYSTEM',8,NULL,826,NULL,NULL,1),
  (2896,1,'�Ƶ���Ϣ','','portal/pri/hotel/list.action?meetingId=',1,NULL,'WEB','�Ƶ���Ϣ',158,'SYSTEM',21,NULL,828,NULL,NULL,1),
  (2897,1,'�Ƶ���Ϣ','','wap/pri/hotel/list.action?meetingId=',1,NULL,'WAP','�Ƶ���Ϣ',158,'SYSTEM',21,NULL,830,NULL,NULL,1),
  (2898,1,'�Ƶ���Ϣ','','portal/pri/hotel/list.action?meetingId=',1,NULL,'WEB','�Ƶ���Ϣ',159,'SYSTEM',21,NULL,828,NULL,NULL,1),
  (2899,1,'�Ƶ���Ϣ','','wap/pri/hotel/list.action?meetingId=',1,NULL,'WAP','�Ƶ���Ϣ',159,'SYSTEM',21,NULL,830,NULL,NULL,1),
  (2900,1,'�������� ',NULL,'portal/pri/news/show.action?meetingId=',1,NULL,'WEB','��������',157,'SYSTEM',5,NULL,813,NULL,NULL,1),
  (2901,1,'��������',NULL,'wap/pri/news/show.action?meetingId=',1,NULL,'WAP','��������',157,'SYSTEM',5,NULL,814,NULL,NULL,1),
  (2902,2,'�齱��Ϣ',NULL,'portal/pri/meeting/lucky_findLuckyHistory.action?meetingId=',1,NULL,'WEB','�齱��Ϣ',157,'SYSTEM',8,NULL,817,NULL,NULL,1),
  (2903,5,'�齱��Ϣ',NULL,'wap/pri/lucky/lucky_findLuckyHistory.action?meetingId=',1,NULL,'WAP','�齱��Ϣ',157,'SYSTEM',10,NULL,818,NULL,NULL,1),
  (2905,5,'�᳡����',NULL,'wap/pri/paper/paper_findEnablePaper.action?meetingId=',1,NULL,'WAP','�᳡����',157,'SYSTEM',10,NULL,822,NULL,NULL,1),
  (2906,2,'�α���Ϣ',NULL,'portal/pri/meeting/guest_findAllGuest.action?meetingId=',1,NULL,'WEB','�α���Ϣ',157,'SYSTEM',8,NULL,825,NULL,NULL,1),
  (2907,5,'�α���Ϣ',NULL,'wap/pri/guest/guest_findAllGuest.action?meetingId=',1,NULL,'WAP','�α���Ϣ',157,'SYSTEM',8,NULL,826,NULL,NULL,1),
  (2908,1,'�Ƶ���Ϣ','','portal/pri/hotel/list.action?meetingId=',1,NULL,'WEB','�Ƶ���Ϣ',157,'SYSTEM',21,NULL,828,NULL,NULL,1),
  (2909,1,'�Ƶ���Ϣ','','wap/pri/hotel/list.action?meetingId=',1,NULL,'WAP','�Ƶ���Ϣ',157,'SYSTEM',21,NULL,830,NULL,NULL,1),
  (2910,1,'�Ƶ���Ϣ','','portal/pri/hotel/list.action?meetingId=',1,NULL,'WEB','�Ƶ���Ϣ',160,'SYSTEM',21,NULL,828,NULL,NULL,1),
  (2911,1,'�Ƶ���Ϣ','','wap/pri/hotel/list.action?meetingId=',1,NULL,'WAP','�Ƶ���Ϣ',160,'SYSTEM',21,NULL,830,NULL,NULL,1);

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
  (60,'�����ƶ�ͨ�����޹�˾','',NULL,'2012-02-28 12:38:30',1,'','','',1,0,NULL);

COMMIT;

#
# Data for the `page_theme` table  (LIMIT 0,500)
#

INSERT INTO `page_theme` (`id`, `name`, `title`, `description`, `thumbnail_name`, `state`) VALUES 
  (1,'','��ɫ���','ϵͳĬ����ɫ����Ƥ��','images/thumbnail.png',1),
  (3,'green','���ⰻȻ','��ɫ���������Ƥ����ע�����ǲ��������⣩','green/images/thumbnail.png',1);

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



#
# Data for the `meeting_module_title` table  (LIMIT 0,500)
#

INSERT INTO `meeting_module_title` (`id`, `meeting_id`, `base_module_title_id`, `base_menu_id`, `name`, `title_name`, `key_name`, `terminal_type`) VALUES 
  (289,157,17,118,'�������','��������','agenda.team.detail.title','CLIENT'),
  (290,157,18,118,'�������','��������','agenda.team.others.title','CLIENT'),
  (291,157,80,120,'��������','���ع���','file.download.title','CLIENT'),
  (292,157,19,121,'��������','����','interaction.post.title','CLIENT'),
  (293,157,20,121,'��������','��������','interaction.reply.title','CLIENT'),
  (294,157,94,122,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (295,157,21,124,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (296,157,22,124,'��������','��������','dinner.team.others.title','CLIENT'),
  (297,157,23,125,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (298,157,24,126,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (299,157,81,126,'˽��','�鿴˽��','privatemsg.view.title','CLIENT'),
  (300,158,17,118,'�������','��������','agenda.team.detail.title','CLIENT'),
  (301,158,18,118,'�������','��������','agenda.team.others.title','CLIENT'),
  (302,158,80,120,'��������','���ع���','file.download.title','CLIENT'),
  (303,158,19,121,'��������','����','interaction.post.title','CLIENT'),
  (304,158,20,121,'��������','��������','interaction.reply.title','CLIENT'),
  (305,158,94,122,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (306,158,21,124,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (307,158,22,124,'��������','��������','dinner.team.others.title','CLIENT'),
  (308,158,23,125,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (309,158,24,126,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (310,158,81,126,'˽��','�鿴˽��','privatemsg.view.title','CLIENT'),
  (311,159,17,118,'�������','��������','agenda.team.detail.title','CLIENT'),
  (312,159,18,118,'�������','��������','agenda.team.others.title','CLIENT'),
  (313,159,80,120,'��������','���ع���','file.download.title','CLIENT'),
  (314,159,19,121,'��������','����','interaction.post.title','CLIENT'),
  (315,159,20,121,'��������','��������','interaction.reply.title','CLIENT'),
  (316,159,94,122,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (317,159,21,124,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (318,159,22,124,'��������','��������','dinner.team.others.title','CLIENT'),
  (319,159,23,125,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (320,159,24,126,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (321,159,81,126,'˽��','�鿴˽��','privatemsg.view.title','CLIENT'),
  (322,160,17,118,'�������','��������','agenda.team.detail.title','CLIENT'),
  (323,160,18,118,'�������','��������','agenda.team.others.title','CLIENT'),
  (324,160,80,120,'��������','���ع���','file.download.title','CLIENT'),
  (325,160,19,121,'��������','����','interaction.post.title','CLIENT'),
  (326,160,20,121,'��������','��������','interaction.reply.title','CLIENT'),
  (327,160,94,122,'�᳡λ��','�᳡λ��','location.map.title','CLIENT'),
  (328,160,21,124,'��������','�Ͳ�����','dinner.team.detail.title','CLIENT'),
  (329,160,22,124,'��������','��������','dinner.team.others.title','CLIENT'),
  (330,160,23,125,'ͨѶ¼','ͨѶ¼���� ','memberlist.detail.title','CLIENT'),
  (331,160,24,126,'˽��','����˽��','privatemsg.post.title','CLIENT'),
  (332,160,81,126,'˽��','�鿴˽��','privatemsg.view.title','CLIENT');

COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
