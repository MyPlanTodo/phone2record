/*
* �޸��������ñ�����meeting_id�ֶ�
*/ 

alter table page_custom add column meeting_id int;

/*
* �޸Ļ��������ļ�������file_cover_path�ֶ�
*/ 

alter table meeting_files add column file_cover_path varchar(100) ;