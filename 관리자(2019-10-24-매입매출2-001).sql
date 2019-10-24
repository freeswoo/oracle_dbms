-- 여기는 관리자 화면입니다.
CREATE TABLESPACE iolist2_DB
DATAFILE '/bizwork/oracle/data/iolist2.dbf'
SIZE 10M AUTOEXTEND ON NEXT 100K;

CREATE USER iolist2 IDENTIFIED BY iolist2
DEFAULT TABLESPACE iolist2_db;

GRANT DBA TO iolist2;

