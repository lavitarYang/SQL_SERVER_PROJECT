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
	CareerID int not null,
	constraint FK_CAREER_H foreign key(CareerID) references CAREER(CareerID)
	on update cascade on delete cascade,
	Record int not null ,
	constraint UC_HISTORY unique(UserID,Record,CareerID),
	constraint PK_HISTORY primary key(UserID,Record,CareerID) 
);
*/

/*
	--¾�~���:���J��Ʀ�
	insert into CAREER values('��¾�H��','Soclal','�t�d�v�Ь��ʻP�����A���ѫH���B�믫�M���ʵ��譱������')
insert into CAREER values('�a��','Soclal','�b���W�Ǯվǲߥ~�A���ǥʹ��Ѯ�~�Ƿ~����')
insert into CAREER values('�ɲ߯Z�Ѯv','Soclal','�b���W�Ǯվǲߥ~�A���ǥʹ��Ѯ�~�Ƿ~����')
insert into CAREER values('�б�','Soclal','�q�ƾǳN��s�A�b�j�M�|�նi���s�P�оǤu�@')
insert into CAREER values('�԰ӻP�{�ɤ߲z�v','Soclal','�����ӤH�߲z�P�������D�A��I���{�δ��ѿ԰ӡA��U�Ӯ׭�����D')
insert into CAREER values('�B�ʱнm','Soclal','���ɭӤH�ι�������B�ʪ����ѩM��k�A�W�i��B�ʪ�{')
insert into CAREER values('���@','Soclal','�b���c�ήa���A��U���֪̩Ψ��߻٤H�h����`���ʡA�]�t�����浥�h��')
insert into CAREER values('���z�P¾��v���v','Soclal','�W���f�H�B�˪̩Ψ��߻�ê�H�h�����{�A��U�ﵽ�Ϋ�_�W�ߥͬ���O')
insert into CAREER values('�@�z�v','Soclal','�����f�H�����d���D�A�����@�z��ĳ�P�A�ȡA�޲z�÷��U�f�H')
insert into CAREER values('�ɹC','Soclal','�a��ζ������[�����I�B�����W�ӡA�γ��ժ��]�B�e�Y�i�����')
insert into CAREER values('�A�ȥ�','Soclal','�t�d�����U�ȡB�w�Ʊa��B��U�I�\���е��B�ݰe�������u�@')
insert into CAREER values('�ꤤ�Ѯv','Soclal','�b�Ǯձоɰꤤ�ǥͪ��ѻP�ҵ{�i��Цh�Ӭ�ةαa��Z��')
insert into CAREER values('�����Ѯv','Soclal','�b�Ǯձоɰ����ǥͪ��ѻP�ҵ{�i��Цh�Ӭ�ةαa��Z��')
insert into CAREER values('���ЦѮv','Soclal','�t�d�оɥ��ા�ѩνҵ{�A�P�i�Ĥl�����߻P���|�o�i')
insert into CAREER values('���u�v','Soclal','��U�Ӯ׾A���P�ĤJ���|�A�]�t�a�x�B���ϡB�������c�B�q�k��쵥����')
insert into CAREER values('����','Conventional','�ʶR���~�һݪ����~�ΪA�ȡC���ʭ쪫�ơB�]�ƩΤu�㵥�A�H�Q�Ͳ�')
insert into CAREER values('���ȭ�','Conventional','�b���a���A�ȡA�B�̦�F�B����y�{�B�����A��')
insert into CAREER values('���ħ����R�v','Conventional','����������T�i����R�A��P�Ͷըä޾ɧ��̶i����')
insert into CAREER values('�|�p�v','Conventional','���R���~�]�Ȳ{�p�A�s�s�U�س���A�]�t�겣�t�šB�Q�����l������')
insert into CAREER values('���v','Conventional','���R�H�f�έp��ơA�i�歷�I�w���B�w������y�ʡB�p��O�I�O�v��')
insert into CAREER values('��T�w���H��','Conventional','�O�@�����B��T�����n���q�l�]�ơF�B�z�q���w���|�}�M�f�r')
insert into CAREER values('��ƻP�ɮ׺޲z��','Conventional','�O�s�B���@�ú޲z��ơB���B�ɮפά����t�ΡA�]�t�Ʀ줺�e�ι�ڪ��~')
insert into CAREER values('��F�H��','Conventional','�B�z�줽�Ǧ�F�A�i��]�t��ť�q�ܡB�]�ƾާ@�B���B�z')
insert into CAREER values('�����}�o�H��','Conventional','���R�ϥΪ̻ݨD�A�]�p�������e�A�]�t��r�B�ϫ��B�v����')
insert into CAREER values('�����]�p�v','Artistic','���ӫȤ�ݨD�A�H�U�ا��Ƴ]�p�ϮסA��P��ΫŶǮɨϥ�')
insert into CAREER values('�h�C��]�p�v','Artistic','�Q�ιq���B�v�����h�C������A�Ч@�ʵe�B�q�v�B�S�ġB�s�i��')
insert into CAREER values('�Ǥ��]�p�v','Artistic','�]�p�Ǥ��Ŷ��A�]�t�ӷ~�j�ӡB�u�~�ؿv�B��v���A���U���ǩM�\���')
insert into CAREER values('�ؿv�v','Artistic','�]�p�óW���}�o�ץ�A�p��q�]�I�B�����W���B�C�ֳ]�I�B��v�ϵ�')
insert into CAREER values('���֮a','Artistic','�b�R�x�B�`�ءB�q�v�ο����@�~���A�t���־��κt�ۡB���')
insert into CAREER values('�ӷ~�]�p�v','Artistic','���ӻݨD�W��A�]�p�ݨ���P�M�\�઺���~�A�p�a�q�Ϋ~�B�����')
insert into CAREER values('�u�~�]�p�v','Artistic','���ӻݨD�W��A�]�p�ݨ���P�M�\�઺���~�A�p�a�q�Ϋ~�B�����')
insert into CAREER values('�y��A���]�p�v','Artistic','�x���ɩ|�ͶաA�]�p�A���M�t��C�i��]�t�ϥΤ��P��m�P���誺�зs')
insert into CAREER values('�O��','Artistic','�����P���R�����ɻ��Ȫ��ƥ�A�ì��������x�B�s���q�Ƕi�����')
insert into CAREER values('�S����','Artistic','�����P���R�����ɻ��Ȫ��ƥ�A�ì��������x�B�s���q�Ƕi�����')
insert into CAREER values('�t��','Artistic','�b�R�x�B�`�عq�v�t�X�A�z�L�n���B����ʧ@�κq�����ɨӧe�{����')
insert into CAREER values('�s�q�D��','Artistic','�b�s���D���P�͸ܡC�p�X�ݡB���Шӻ��B�D����§�B�����s�D��')
insert into CAREER values('�D���H','Artistic','�b�q�����D���P�͸ܡC�p�X�ݡB���Шӻ��B�D����§�B�����s�D��')
insert into CAREER values('�y���]�p�v','Artistic','���ɾ���y���f�t�A�]�t���e�B�W���B�v���]�p�B�A����f��')
insert into CAREER values('�R��','Artistic','�t�X�U���������ɡA�]�t�j��B�y�浥����C�i��ݭn�ۺq�κt��')
insert into CAREER values('���N�`��','Artistic','�]�p�������N�e�{���z���A���ɤu�@�ζ�����t�M�e�{�A�óW����P�]��')
insert into CAREER values('�s��','Artistic','�b�U�د����X���e�A�i���s�P�f�֡A�]�t��r�B�Ϲ��B�h�C�鵥')
insert into CAREER values('���N�a','Artistic','�B�ΦU�د����ޥ��Ч@���N�~�A�p�e�a�B�J��a�M���e�a��')
insert into CAREER values('�C���]�p�v','Artistic','�]�p�C���A�i��]�t�C�����k�B�G�Ƽ@���B�H���]�w��')
insert into CAREER values('�fĶ','Artistic','½Ķ��r��ƻP�f�y���e����L�y���ڸs�A�]�t��Ķ�B�fĶ�B��y½Ķ��')
insert into CAREER values('���[�]�p�v','Artistic','���[�]�p�A�]�t�y���B�ؿv�B�x��B��󵥡A�i��ݭn��ءB�װšB�I��')
insert into CAREER values('�����]�p�v','Artistic','���[�]�p�A�]�t�y���B�ؿv�B�x��B��󵥡A�i��ݭn��ءB�װšB�I��')
insert into CAREER values('��v�v','Artistic','����v���μv���A�D�D�]�t�H��B�ӫ~�B���[���A�i��]�t�L��~�s�@')
insert into CAREER values('�֤H','Artistic','�Ч@��ǧ@�~�A�]�t�峹�B�֧@�B�q���B�@�������e')
insert into CAREER values('�@�a','Artistic','�Ч@��ǧ@�~�A�]�t�峹�B�֧@�B�q���B�@�������e')
insert into CAREER values('�O��','Realistic','���d�Φu�ê��ϡB�в��λȦ浥�U�س��ҡA����s�B�m�T���H�k�欰')
insert into CAREER values('ĵ��','Realistic','�t�d���k�B���@���@�w���B�O�٤H���ͩR�]���B����Ǹo�B�e���ǤH')
insert into CAREER values('�p�v','Realistic','�ǳƭ����B�Ʋz�����B���~�B���a�B���I���C�i��ݭn�t�d���ʡB��o���C')
insert into CAREER values('�ʪ��}�i��','Realistic','�}�i�ʪ��B�]�t�b�����d�����C�ݭn������ơC')
insert into CAREER values('�B�ʭ�','Realistic','�ѻP�U���B�ʤ��ɡA���o�a�A�C')
insert into CAREER values('���~���פH��','Realistic','�ײz�q�l�ξ���]�ơA�]�t�q���B�q�T�]�ơB�U���B��u�㵥�C')
insert into CAREER values('�g��u�{�v','Realistic','�W���B�]�p�B�ʷ��B���@�u�{�ؿv�]�I�A�]�t�D���B����B��f�B�q�t���C')
insert into CAREER values('�A�~�P���~�޳N��','Realistic','��o�B��}�B�M�Ͳ��A�~���~�έ����F�]�i��q�ưʪ���s�B�}�|�M�e�f�w���C')
insert into CAREER values('�a�z�P��Ӵ�ø��','Realistic','�����B���R�M�����a�z��T�C�i��]�t�]�p�M�W���a�z��T�t�ΡC')
insert into CAREER values('����','Realistic','�t�d�r�p�����B�魼�ȩγf���A�ݭn���ɶ��V�m�M�۹��������ӡC')
insert into CAREER values('§���v','Enterprising','���ɸ�§�����A�]�t�{���H���޲z�B���a���m�B��q�W���B�|��������C')
insert into CAREER values('�x�x','Enterprising','�Ѱ�a���v�A�t�d�޲z�x�����x���A�����ɩάO�����u�@�C')
insert into CAREER values('�@�خv','Enterprising','�Ѩ��@�ش��ѵ��U�ȡA�i��]�n�i��Ԫ�B��o�s���@�ث~���C')
insert into CAREER values('�k�x','Enterprising','�q�k�����H���A�b�k�x�����M�ΰ���f�P�C�]�t���D�ƧP�M�B���B���ҵ�')
insert into CAREER values('�~�ȤH��','Enterprising','�ݼ��x���q���~�ít�d�P��A�i��ݭ��Ͷ}�o�Bñ�������B�����U�ȪA��')
insert into CAREER values('�M�d�H��','Enterprising','�b�ө����i��P��A�c�歹����|�ֵ��Ϋ~�C')
insert into CAREER values('�ȪA�H��','Enterprising','�^���óB�z�U�ȩҴ��X�����D�C')
insert into CAREER values('�Ʀ��P','Enterprising','������i��ӷ~���ʡA�W����B�����B�c��ӫ~�A�ȡB�B�z�����q�浥�C')
insert into CAREER values('�H�O�귽�M��','Enterprising','�q�ƥ��~���H�O�귽�����u�@�A�]�A�۶ҡB�Ш|�V�m�B�~�S���h���C')
insert into CAREER values('�`�g�z','Enterprising','���ɤ��q�B�@�A�]�t��B�F���B��`�޲z�B�W���]�ȤΤH�O�ϥΡC')
insert into CAREER values('�߮v','Enterprising','���e�U�Ϋ��w�A�b�k�ߵ{�Ǥ��A��U��ƤH�i��D�^�B�G�@�Ψ�L�ƶ��C')
insert into CAREER values('����','Enterprising','�B�ΦU�ثŶǯ����B�s�i�C��M���}���ʡA�i�洣�ɭӤH�β�´�ζH�C')
insert into CAREER values('����','Enterprising','�����κʷ�����A�]�t�i�X��f�B�e�y�M���v���C')
insert into CAREER values('ĳ��/�ߪk�e��','Enterprising','�ѤH����X�Aĳ�M���j�ץ�B��w�έק�k�߱���C')
insert into CAREER values('������P���e','Enterprising','��s�j�M�����������W�h�B��s�ϥΪ̦欰�A�W�[�����n���{�סC')
insert into CAREER values('���~�޲z','Enterprising','�ѻP���~�޲z�P�M���L�{�A���X���ӵo�i��ĳ�β{�p�ﵽ��סC')
insert into CAREER values('�ŪA��','Enterprising','���ѮȫȪA�ȡA�����ȷP��w���ξA�C�]�t���ݡB�]�ƨϥλ����B���Ѷ����C')
insert into CAREER values('�ɺt','Enterprising','�����@���B�q�v�θ`�ؼ@���C���ɺt���t�X�M�R�x�e�{�C')
insert into CAREER values('�M�׺޲z�v','Enterprising','�t�d�M�׭p�e�����ީM����A�ݴx�����q�B�ɶ��B���������ѻP��O�C')
insert into CAREER values('�����v/���e�v','Enterprising','���U�ȴ����y���M����O�i�Ϋ������{�A�Ǧ���_���O�μW�[���[�C')
insert into CAREER values('�O�I�g���H','Enterprising','�c��U�Q�O�I�A�p:�x�W�I�B���I�B�N�~�I���C�i��W�ߤu�@�����ݩ󤽥q�C')
insert into CAREER values('�s�i���','Enterprising','�����~�Τ��q���g�ŶǤ�סA��U�شC��P�s�i���ϥΡC')
insert into CAREER values('���ʲ��g���H','Enterprising','���ɩξ�X���ʲ����R�����B����B�N�P���ưȡC')
insert into CAREER values('�q���w��u�{�v','Investigativ','��s�B�]�p�B�}�o�P���չq���n��]�ơA�άO�ʴ��s�y�P�w�˹L�{�C')
insert into CAREER values('���g�O�|�H��','Investigativ','�W���X�z�ϥΤg�a����k�A�]�t���g�O���B����g�[�I�k���C')
insert into CAREER values('����v','Investigativ','�E�_�B�v��������M�f�Ĭ������e�f�M���l�C')
insert into CAREER values('���q�u�{�v','Investigativ','�B�ξ���B�q�l�P�q���u�{��z�A�]�p�۰ʤƩδ��z�����t�λP���~�C')
insert into CAREER values('�H�]�u�{�v','Investigativ','�ھڤH���欰�A�]�p�]�Ƥu��Τu�@���ҡA���H�P�t�Τ��ʵo����j�įq�C')
insert into CAREER values('�ͤƤu�{�v','Investigativ','�H�ͩR��ǻP�ƾǪ��ѡB�޳N�}�o���~�A�ѨM�H�B�ʴӪ��B�L�ͪ��������D�C')
insert into CAREER values('�q���u�{�v','Investigativ','�}�o�B�ʴ��q���]�Ʃιq���t�Ϊ��s�y�M�w��')
insert into CAREER values('�~��','Investigativ','�w�靈�e�f���ʪ��i��E�_�P�v���C�]�i��q�Ƭ�o�B�ԸߡB�P�ⵥ�C')
insert into CAREER values('�Įv','Investigativ','�ھ���v���B��?�i���ˮ֡A�ô��ѩһݤ��Ī��C')
insert into CAREER values('�ͩR��Ǯa','Investigativ','��s�U�إͩR���ѡA�]�t�_���B�o�i�B���c�M�\�൥�C')
insert into CAREER values('���q�u�{�v','Investigativ','�B�Τu�{�P�ƾǭ�z�A��o����Q�Ϊ��޳N�C')
insert into CAREER values('�����լd�H��','Investigativ','�լd�ì�s�����{�p�P�����ͶաA���Ѧ�P�M���ɩҥ�������ơC')
insert into CAREER values('�j���Ǯa','Investigativ','��s��H�ø����ìP�B�p�F�M��H�w������ơC')
insert into CAREER values('�Ƥu�u�{�v','Investigativ','�]�p�Ƥu�t���s�y�y�{�ζ}�o�Ƥu���~�A�p�Ƨ��~�B�콦�B���d���C')
insert into CAREER values('����u�{�v','Investigativ','�W���M�]�p�u��B�����B�������˳ơA�]�|�t�d�w�ˡB�ާ@�B���׵��u�@�C')
insert into CAREER values('��i�v','Investigativ','�W�����~�P��i�p�e�C��U�ﵽ���d�α���e�f�A�]�i��i��ʷ��οԸߡC')
insert into CAREER values('�ӷ~���z���R�v','Investigativ','�z�L��Ƥ��R�u��A��N�L�h���~��ơA��z���������M���C')
insert into CAREER values('�ƾڤ��R�v','Investigativ','�����ä��R�j�q�ƾڡA�̦��k�ǻP�w�������ͶաB�����P�q�w�M���C')
insert into CAREER values('���ޤH��','Investigativ','�t�d��ô���~���������ҡA�i����@�P�˴��A�T�O�������Ҷ��Z�B�@�C')
insert into CAREER values('�H���Ǯa','Investigativ','��s�H�����欰�B���|�ܾE�B��´�[�c�B�y���M��Ƶ��C')
insert into CAREER values('�{���]�p�v','Investigativ','���R�B�s�g�B�ק�B���յ{���X�A�}�o�q�����ε{���C')
insert into CAREER values('��Ӥu�{�v','Investigativ','�i��M�w�A�]�p�B�}�o�M���խ����B���u�M�ӪŲ�]�ơC')
insert into CAREER values('���Ƥu�{�v','Investigativ','�������ƩM�s���A�s�y�ŦX���~�]�p�P�W�檺���ơA�p���ݡB�콦�B�������C')
insert into CAREER values('���u�u�{�v','Investigativ','�]�p�B�W���ΰ���P���ҽåͬ������u�{�A�p�o�󪫳B�z���C')
insert into CAREER values('��v','Investigativ','�E�_�B�v���P��U�w���U�دe�f�M�ˮ`�C')
	--�Ǹs���:���J��Ʀ�
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
select *
from CAREER
*/

