/**
* Meeting���������췽�ͳа췽�ֶ�
*/

alter table meeting add host varchar(100) comment '���췽';
alter table meeting add organizer varchar(100) comment '�а췽';

/**
* Meeting������logoͼƬ��ַ��Ƥ�������ֶ�
*/

alter table meeting add logo_image varchar(50) comment 'logoͼƬ';
alter table meeting add theme_id int comment '����Ƥ��id';

--ͳһ�޸�theme_idֵΪ1����Ĭ������
update meeting set theme_id=1;
commit;