/*
* �������Ͷ���
*/ 

insert into `data_dict_config` (`id`, `data_type`, `act_type`, `data_code`, `data_name`, `data_desc`, `cond`, `data_value`, `order_by`, `remark`) values('18','vehicle_type','common','����','����',NULL,NULL,NULL,NULL,NULL);
insert into `data_dict_config` (`id`, `data_type`, `act_type`, `data_code`, `data_name`, `data_desc`, `cond`, `data_value`, `order_by`, `remark`) values('19','vehicle_type','common','С�γ�','С�γ�',NULL,NULL,NULL,NULL,NULL);
insert into `data_dict_config` (`id`, `data_type`, `act_type`, `data_code`, `data_name`, `data_desc`, `cond`, `data_value`, `order_by`, `remark`) values('20','vehicle_type','common','��ͳ�','��ͳ�',NULL,NULL,NULL,NULL,NULL);
insert into `data_dict_config` (`id`, `data_type`, `act_type`, `data_code`, `data_name`, `data_desc`, `cond`, `data_value`, `order_by`, `remark`) values('21','vehicle_type','common','�����','�����',NULL,NULL,NULL,NULL,NULL);

/*
* �޸ĳ�����ṹ
*/

ALTER TABLE vehicle ADD COLUMN TYPE VARCHAR(50);