# 执行这个脚本文件可以创建好数据库,用户和表
drop database if exists web_db;
create database web_db;
create user 'webuser'@'%' identified by 'webuser';
grant all privileges on web_db.* to 'webuser'@'%' with grant option;
use web_db;

CREATE TABLE User(
	  UID INT NOT NULL,
    UNAME VARCHAR(10) character set utf8 NOT NULL,
    EMAIL VARCHAR(40) character set utf8 NOT NULL,
    primary key(UID)
);

CREATE TABLE Comment (
	CID INT NOT NULL,
    NUM INT NOT NULL,
    CONTENT text character set utf8 NOT NULL ,
    primary key(CID)
);

CREATE TABLE NEWS (
	  NID INT NOT NULL,
    NTIME DATE NOT NULL,
    HEADER text character set utf8 NOT NULL,
    CONTENT text character set utf8 NOT NULL,
    CATEGORY VARCHAR(10) character set utf8 NOT NULL,
    UPSTREAM VARCHAR(10) character set utf8 ,
    primary key(NID)
);

CREATE TABLE IMAGES (
	  IMAGEID INT NOT NULL,
    PATH VARCHAR(30) character set utf8 NOT NULL,
    primary key(IMAGEID)
);

CREATE TABLE NI (
	  NID INT NOT NULL,
    IMAGEID INT NOT NULL,
    primary key(NID)
);