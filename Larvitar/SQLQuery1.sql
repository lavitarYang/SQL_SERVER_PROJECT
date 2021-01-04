--create database FRAME
use FRAME
/*
drop table  if exists CAREER 
create table CAREER(
	CareerID int not null identity(1,1),
	constraint PK_CAREER primary key(CareerID),
	CareerName varchar(255) not null,
	Attribute varchar(255) not null,
	WorkInfo varchar(255) null
);
drop table if exists INDICATOR
create table INDICATOR(
	AttributeID int not null IDENTITY(1,1),
	constraint PK_INDICATOR primary key(AttributeID),
	Attribute varchar(25) not null,
	Advence varchar(255) not null,
	Possibility varchar(255) not null
);
drop table if exists RELATIVE_SUBJECT
create table RELATIVE_SUBJECT(
	SqenID int not null identity(1,1),
	constraint PK_RELATIVE_SUBJECT primary key(SqenID), 
	SubjectName varchar(255) not null 
);
drop table if exists USERINFO
create table USERINFO(
	UserID int not null identity(1,1),
	constraint PK_USERINFO primary key(UserID),
	UserName varchar(255) not null,
	Email varchar(255) null,
	Age int null,
	SubjectName varchar(255) null
);
drop table if exists HISTORY
create table HISTORY(
	UserID int not null,
	constraint FK_USERINFO_H foreign key(UserID) references USERINFO(UserID) 
	on update cascade on delete cascade,
	Record int not null ,
	constraint UC_HISTORY unique(UserID,Record),
	constraint PK_HISTORY primary key(UserID,Record) 
);
*/
/* --�Ǹs���:���J��Ʀ�
insert into RELATIVE_SUBJECT values ('�a�y�P���ҾǸs');
insert into RELATIVE_SUBJECT values ('�u�{�Ǹs');
insert into RELATIVE_SUBJECT values ('�Ʋz�ƾǸs');
insert into RELATIVE_SUBJECT values ('��T�Ǹs');
insert into RELATIVE_SUBJECT values ('���|�P�߲z�Ǹs');
insert into RELATIVE_SUBJECT values ('�޲z�Ǹs');
insert into RELATIVE_SUBJECT values ('���Ľå;Ǹs');
insert into RELATIVE_SUBJECT values ('�ͩR��ǾǸs');
insert into RELATIVE_SUBJECT values ('�]�g�Ǹs');
insert into RELATIVE_SUBJECT values ('�ͪ��귽�Ǹs');
insert into RELATIVE_SUBJECT values ('�k�F�Ǹs');
insert into RELATIVE_SUBJECT values ('��v���Ǹs');
insert into RELATIVE_SUBJECT values ('�j���Ǽ��Ǹs');
insert into RELATIVE_SUBJECT values ('�C�ͻP�B�ʾǸs');
insert into RELATIVE_SUBJECT values ('�L�S�w�Ǹs');
insert into RELATIVE_SUBJECT values ('���N�Ǹs');
insert into RELATIVE_SUBJECT values ('�~�y�Ǹs');
insert into RELATIVE_SUBJECT values ('�ؿv�P�]�p�Ǹs');
insert into RELATIVE_SUBJECT values ('�Ш|�Ǹs');
*/
/*--���Ъ��:���J��Ʀ�
insert into INDICATOR values ('Social','��դH�ڬ���;�o�{�P�ѨM�L�H���D;�u�q���H�ڻP�����޲z��O','�Ш|�B���u�߲z�B���@�P�v�е����')
insert into INDICATOR values ('Conventional','����ļƦr�B��;��T�B�z�B��´�B�W���P�ξ�;��ѡB��F�譱��ƺ�T���B�̧ޥ�','�]�Ȫ��ġB�S�U���ѡB�|�p�B��F�����')
insert into INDICATOR values ('Artistic','�B�ηQ���O�P�гy�O�����F�P;���Ƴзs�B�u�ʦ��F��;����]�p�P�гy�A�㦳�����ѽ�','���N�B�]�p�����')
insert into INDICATOR values ('Realistic','����P�]�ƾާ@�A��u��B�ΡB�]�ƾާ@�B�p����u�P�}�i�ʪ����ѽ�','����q�l�B�A�L�����B�B�ʩΫؿv�u�����')
insert into INDICATOR values ('Enterprising','���X�ӷ~����Q���|;�A�X�޲z�P�ʷ��u�@;�㦳�P��P���A�ޥ�����O','���~��ɡB��P�����B�k�߬F�v�����')
insert into INDICATOR values ('Investigativ','�z�ѡB�ѨM��ǩμƾǰ��D;��s���R�P������ơB�c�Q�P�z��;��H���','�z�u����ΤH���ǻ��')
*/

/*--this has no use anymore
drop table if exists INTERMEDIARY_HISTORY
create table INTERMEDIARY_HISTORY(
	UserID int not null,
	Record int not null,
	constraint PIH foreign key(UserID,Record) references HISTORY(UserID,Record),
	primary key(UserID,Record),
	CareerID int not null foreign key references CAREER(CareerID)
);


drop table if exists INTERMEDIARY_CAREER_SUBJECT
create table INTERMEDIARY_CAREER_SUBJECT(
	CareerID int not null,
	constraint FK_CAREER_CS foreign key(CareerID) references CAREER(CareerID) 
	on update cascade on delete cascade,
	SqenID int not null,
	constraint FK_RELATIVE_SUBJECT foreign key(SqenID) references RELATIVE_SUBJECT(SqenID)
	on update cascade on delete cascade,
	constraint UC_INTER_CS unique(CareerID,SqenID),
	constraint PK_INTER_CS primary key(CareerID,SqenID)
);
drop table if exists INTERMEDIARY_CAREER_INDICATOR
create table INTERMEDIARY_CAREER_INDICATOR(
	CareerID int not null,
	constraint FK_CAREER_CI foreign key(CareerID) references CAREER(CareerID) 
	on update cascade on delete cascade ,
	AttributeID int not null,
	constraint FK_INDICATOR_CI foreign key(AttributeID) references INDICATOR(AttributeID) 
	on update cascade on delete cascade,
	constraint UC_INTER_CI unique(CareerID,AttributeID),
	constraint PK_INTER_CI primary key(CareerID,AttributeID)
);

*/

/*
select *
from RELATIVE_SUBJECT
*/

