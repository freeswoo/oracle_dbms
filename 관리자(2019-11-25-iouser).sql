create TABLESPACE sp_iolist_db
DATAFILE '/bizwork/oracle/data/sp_iolist.dbf'
size 10M AUTOEXTEND on next 10K;

CREATE user iouser IDENTIFIED by iouser
DEFAULT TABLESPACE sp_iolist_DB;

GRANT DBA to iouser;
