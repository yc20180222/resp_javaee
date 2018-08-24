drop database if exists scm;

create database scm default character set utf8;

use scm;

drop table if exists supplier;


/*============================*/
/* Table: 管理员表结构 		  */
/*============================*/
create table account
(
   /* 管理员编号,自动增长 */
   acc_id                  int not null auto_increment,
   /* 管理员登录名  */
   acc_login               varchar(20),
   /* 管理员姓名  */
   acc_name                varchar(20),
   /* 管理员密码 */
   acc_pass                varchar(20),
   /* 设置编号为主键 */
   primary key (acc_id)
);

/*==============================================================*/
/* Table: 供应商表	                                        */
/*==============================================================*/

create table supplier
(
   sup_id               int not null auto_increment,
   sup_name             varchar(20),
   sup_linkman          varchar(20),
   sup_phone            varchar(11),
   sup_address          varchar(100),
   sup_remark           varchar(200),
   primary key (sup_id)
);

/* 添加管理员数据, */
insert into account (acc_login,acc_pass) values ('admin','admin');
insert into account (acc_login,acc_pass) values ('admin2','admin2');
/* 添加供应商数据, */
insert into supplier (sup_name,sup_linkman,sup_phone,sup_address,sup_remark) values ('苹果供应商','小张','12388888887','广州花都','普通供应商');
insert into supplier (sup_name,sup_linkman,sup_phone,sup_address,sup_remark) values ('三星供应商','小王','12388888888','广州增城','普通供应商');
insert into supplier (sup_name,sup_linkman,sup_phone,sup_address,sup_remark) values ('华为供应商','小王','12388888889','广东深圳','一级供应商');


select * from account;
select * from supplier;

create table goods
(
   goods_Id             varchar(36) not null,
   goods_name           varchar(20),
   goods_unit           varchar(10),
   goods_type           varchar(10),
   goods_color          varchar(10),
   goods_store          int,
   goods_limit          int,
   goods_commission     decimal(2,2),
   goods_producer       varchar(50),
   goods_remark         varchar(100),
   goods_sel_price      decimal(12,2),
   goods_buy_price      decimal(12,2),
   primary key (goods_Id)
);

drop table if exists store_house;
create table store_house
(
	sh_id varchar(10) not null comment '仓库编号',
	sh_name varchar(20) comment '仓库名称',
	sh_responsible varchar(20) comment '责任人',
	sh_phone varchar(11) comment '联系电话',
	sh_address varchar(11) comment '联系地址',
	sh_type varchar(10) comment '仓库类型',
	sh_remark varchar(100) comment '备注',
	primary key (sh_id)
);
	
	
	
	
