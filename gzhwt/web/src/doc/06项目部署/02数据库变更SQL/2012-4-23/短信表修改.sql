alter table `meeting_guizhou`.`meeting_sms` 
   add column `mobile` varchar(20) NULL COMMENT '���ն����ֻ���' after `comments`, 
   add column `reciever_name` varchar(50) NULL COMMENT '����������' after `mobile`