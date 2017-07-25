
insert into F_OPTINFO (OPTID, OPTNAME, PREOPTID, OPTROUTE, OPTURL, FORMCODE, OPTTYPE, MSGNO, MSGPRM, ISINTOOLBAR, IMGINDEX, TOPOPTID, ORDERIND, FLOWCODE, PAGETYPE, ICON, HEIGHT, WIDTH, UPDATEDATE, CREATEDATE,CREATOR,UPDATOR)
values ('OS_INFO', '集成业务系统', 'SYSCONF', 'modules/sys/osinfo/osinfo.html', '/service/sys/os', null, 'O', null, null, 'Y', null, null, null, null, 'D', 'icon-base icon-base-gear', null, null, null, null,'u0000000','u0000000');

insert into F_OPTINFO (OPTID, OPTNAME, PREOPTID, OPTROUTE, OPTURL, FORMCODE, OPTTYPE, MSGNO, MSGPRM, ISINTOOLBAR, IMGINDEX, TOPOPTID, ORDERIND, FLOWCODE, PAGETYPE, ICON, HEIGHT, WIDTH, UPDATEDATE, CREATEDATE,CREATOR,UPDATOR)
values ('DATABASE', '集成数据库', 'SYSCONF', 'modules/sys/databaseinfo/databaseinfo.html', '/service/sys/databaseinfo', null, 'O', null, null, 'Y', null, null, null, null, 'D', null, null, null, str_to_date('07-04-2016 15:06:08', '%d-%m-%Y %H:%i:%s'), null,'u0000000','u0000000');


insert into F_OPTDEF (OPTCODE, OPTID, OPTNAME, OPTMETHOD, OPTDESC, ISINWORKFLOW, UPDATEDATE, CREATEDATE, OPTURL, OPTREQ,CREATOR,UPDATOR)
values ('1000101', 'OS_INFO', '所有权限', 'ALL', '更新机构状态', 'F', str_to_date('14-03-2016 14:41:07', '%d-%m-%Y %H:%i:%s'), null, '/*', 'CRUD','u0000000','u0000000');

insert into F_OPTDEF (OPTCODE, OPTID, OPTNAME, OPTMETHOD, OPTDESC, ISINWORKFLOW, UPDATEDATE, CREATEDATE, OPTURL, OPTREQ,CREATOR,UPDATOR)
values ('1000102', 'DATABASE', '所有权限','ALL', null, null, null, null, '/×', 'CRUD','u0000000','u0000000');

INSERT INTO F_ROLEPOWER(ROLECODE,OPTCODE,UPDATEDATE,CREATEDATE,OPTSCOPECODES,CREATOR,UPDATOR)
	values('G-SYSADMIN','1000101',now(),now(),null,'u0000000','u0000000');

INSERT INTO F_ROLEPOWER(ROLECODE,OPTCODE,UPDATEDATE,CREATEDATE,OPTSCOPECODES,CREATOR,UPDATOR)
	values('G-SYSADMIN','1000102',now(),now(),null,'u0000000','u0000000');

update F_OPTINFO SET OPTTYPE ='S' where OPTTYPE='O';

INSERT INTO F_MYSQL_SEQUENCE (NAME, CURRVALUE , INCREMENT) VALUES
  ('S_DATABASECODE', 0, 1);

