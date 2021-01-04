/*create database FRAME*/
use FRAME
/*
drop table  if exists CAREER 
create table CAREER(
	CareerId int not null identity(1,1) primary key,
	CareerName varchar(255) not null,
	Attribute varchar(255) not null,
	WorkInfo varchar(255) null
);
drop table if exists INDICATOR
create table INDICATOR(
	AttributeID int not null IDENTITY(1,1) PRIMARY KEY,
	Attribute varchar(25) not null,
	Advence varchar(255) not null,
Possibility varchar(255) not null,
);
drop table if exists RELATIVE_SUBJECT
create table RELATIVE_SUBJECT(
	SqenID int not null identity(1,1) primary key, 
	SubjectName varchar(255) not null 
);
drop table if exists USERINFO
create table USERINFO(
	UserID int not null identity(1,1) primary key,
	UserName varchar(255) not null,
	Email varchar(255) null,
	Age int null,
	SubjectName varchar(255) null
);
drop table if exists HISTORY
create table HISTORY(
	UserID int foreign key references USERINFO(UserID) on update cascade on delete cascade,
	Record int not null identity(1,1),
	unique(UserID,Record),
	primary key(UserID,Record) 
);
*/
/* /*學群表單--插入資料行*/
insert into RELATIVE_SUBJECT values ('地球與環境學群');
insert into RELATIVE_SUBJECT values ('工程學群');
insert into RELATIVE_SUBJECT values ('數理化學群');
insert into RELATIVE_SUBJECT values ('資訊學群');
insert into RELATIVE_SUBJECT values ('社會與心理學群');
insert into RELATIVE_SUBJECT values ('管理學群');
insert into RELATIVE_SUBJECT values ('醫藥衛生學群');
insert into RELATIVE_SUBJECT values ('生命科學學群');
insert into RELATIVE_SUBJECT values ('財經學群');
insert into RELATIVE_SUBJECT values ('生物資源學群');
insert into RELATIVE_SUBJECT values ('法政學群');
insert into RELATIVE_SUBJECT values ('文史哲學群');
insert into RELATIVE_SUBJECT values ('大眾傳播學群');
insert into RELATIVE_SUBJECT values ('遊憩與運動學群');
insert into RELATIVE_SUBJECT values ('無特定學群');
insert into RELATIVE_SUBJECT values ('藝術學群');
insert into RELATIVE_SUBJECT values ('外語學群');
insert into RELATIVE_SUBJECT values ('建築與設計學群');
insert into RELATIVE_SUBJECT values ('教育學群');
*/
/*/*指標表單--插入資料行*/
insert into INDICATOR values ('Social','協調人際活動;發現與解決他人問題;優秀的人際與情緒管理能力','教育、社工心理、醫護與宗教等領域')
insert into INDICATOR values ('Conventional','善於融數字運算;資訊處理、組織、規劃與統整;文書、行政方面具備精確的處裡技巧','財務金融、特助秘書、會計、行政等領域')
insert into INDICATOR values ('Artistic','運用想像力與創造力產生靈感;做事創新、彈性而靈活;善於設計與創造，具有文藝天賦','藝術、設計等領域')
insert into INDICATOR values ('Realistic','機械與設備操作，對工具運用、設備操作、廚藝手工與飼養動物有天賦','機械電子、農林漁牧、運動或建築工藝領域')
insert into INDICATOR values ('Enterprising','能找出商業或獲利機會;適合管理與監督工作;具有銷售與說服技巧的潛力','企業領導、行銷企劃、法律政治等領域')
insert into INDICATOR values ('Investigativ','理解、解決科學或數學問題;研究分析與解釋資料、構想與理論;抽象思考','理工生醫或人文科學領域')
*/

/*
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
	CareerID int foreign key references CAREER(CareerID) on update cascade on delete cascade primary key,
	SqenID int foreign key references RELATIVE_SUBJECT(SqenID)on update cascade on delete cascade
);
drop table if exists INTERMEDIARY_CAREER_INDICATOR
create table INTERMEDIARY_CAREER_INDICATOR(
	CareerID int foreign key references CAREER(CareerID) on update cascade on delete cascade primary key,
	AttributeID int foreign key references INDICATOR(AttributeID) on update cascade on delete cascade
);
*/

/*
select *
from RELATIVE_SUBJECT
*/

