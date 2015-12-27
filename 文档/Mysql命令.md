#MySql命令
#####查询数据库(以下命令后需接";"分号)
	show databases;
#####查询表
	use 表名;
	show tables;
#####创建表
	create table 表名(列名 类型 范围);
#####查询表的所有列
	desc 表名;
	show columns from 表名;
#####修改表名
	alter table 表名 rename to bbb;
#####添加列
	alter table 表名 add column 列名 varchar(30);
#####删除列
	alter table 表名 drop column 列名;
#####修改列名
	SQLServer：execsp_rename't_student.name','nn','column'; 
	Oracle：lter table bbb rename column nnnnn to hh int; 
	修改列属性：alter table t_book modify name varchar(22);
#####选择：
	select * from table1 where 范围
#####插入：
	insert into table1(field1,field2) values(value1,value2)
#####删除：
	delete from table1 where 范围
#####更新：
	update table1 set field1=value1 where 范围
#####查找：
	select * from table1 where field1 like ’%value1%’ ---like的语法很精妙，查资料!
#####排序：
	select * from table1 order by field1,field2 [desc]
#####总数：
	select count as totalcount from table1
#####求和：
	select sum(field1) as sumvalue from table1
#####平均：
	select avg(field1) as avgvalue from table1
#####最大：
	select max(field1) as maxvalue from table1
#####最小：
	select min(field1) as minvalue from table1

####创建表
	CREATE TABLE `person` (
	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `name` varchar(100) NOT NULL,
	  PRIMARY KEY (`id`)
	) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
	