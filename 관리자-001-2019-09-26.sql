-- SQL 명령들을 사용해서 DBMS 학습을 진행
-- 오라클 11g의 명령세트를 학습
-- 현재 최신 오라클은 19c, 18c 인데
-- 현업에서 사용하는 오라클 DBMS SW들이 아직 하위버전을 사용하고 있어서
-- 11위주의 명령세트(체계)를 학습하게 된다.

-- 마이그레이션
-- 버전업, 업그레이드
-- 하위버전에서 사용하던 데이터베이스(물리적 storage에 저장된 데이터들)를
-- 상위버전 또는 다른회의 DBMS에서 사용할수 있도록 변환, 변경, 이전하는 것들

-- 오라클 DBMS SW(오라클DB, 오라클)를 이용해서 DB관리 명령어를 연습하기 위해서
-- 연습용 데이터저장공간을 생성을 한다.
-- 오라클에서는 storage에 생성한 물리적 저장공간을 TABLESPACE라고 한다.
-- 기타 MYSQL, MSSQL 등등의 DBMS SW들은 물리적 저장공간을 DATABASE라고 한다.

-- DDL 명령을 사용해서 TABLESPACE를 생성한다.
-- DDL 명령을 사용하는 사용자는 ? DBA(DataBase Administor, 데이터베이스 관리자)

-- DDL 명령에서 "생성한다" : CREATE
-- 물리SCHEMA 를 생성한다 라는 의미
CREAT TABLESPACE; -- TABLESPACE를 생성하기
CREAT USER; -- 새로운 접속 사용자를 생성하기
CREAT TABLE; -- 구체적인 데이터를 저장할 공간을 생성하기

-- DDL 명령에서 "삭제,제거한다" : DROP
-- DDL 명령에서 "변경(수정이라고 표현하지 않음)한다" : ALTER

-- C:\bizwork\oracle\data
-- C:/bizwork/oracle/data

-- C:/bizwork/oracle/data/user1.dbf 파일 이름으로 물리적 저장소를 생성한다.
-- 그 저장소 이름은 앞으로 user1_DB라고 사용하겠다
-- 초기 사이즈를 100M(Byte) 로 설정하라
CREATE TABLESPACE user1_DB
DATAFILE 'C:/bizwork/oracle/data/user1.dbf'
SIZE 100M;

DROP TABLESPACE user1_DB
INCLUDING CONTENTS AND DATAFILES
CASCADE CONSTRAINTS;

-- user1_DB 라는 이름으로 TABLESPACE를 만들어라
-- 물리적 저장공간은 'C:/bizwork/oracle/data/user1.dbf'이다.
-- 초기에 100M(Byte)만큼의 공간을 확보해 달라
-- 만약 사용하는 중에 용량이 부족하면 100K(Byte)씩
--    공간을 추가해 달라
CREATE TABLESPACE user1_DB
DATAFILE 'C:/bizwork/oracle/data/user1.dbf'
SIZE 100M AUTOEXTEND ON NEXT 100K;

-- 현재 이 화면에서 명령을 수행하는 사용자는 SYSDBA 권한을 가진 사람이다.
-- SYSDBA 권한은 System DB등을 삭제하거나 변경할수 있기 때문에
-- 실습환경에는 가급적 꼭 필요한 명령 외에는 사용하지 않는 것이 좋다.

-- 실습을 위해서 새로운 사용자를 생성하자
-- 관리자가 user1 새로운 사용자를 등록하고
-- 임시로 비밀번호를 1234로 설정한다.
-- 그리고 앞으로 user1으로 접속하여 데이터를 추가하면
-- 그 데이터는 user1_DB TABLESPACE에 저장하라
CREATE USER user1 IDENTIFIED BY 1234
DEFAULT TABLESPACE user1_DB;

-- 현재 설치된 오라클 DB에 생성되어 있는 사용자 들을 보여달라
SELECT * FROM ALL_USERS;

-- DML의 SELECT 명령은 데이터를 생성, 수정, 삭제 한 후에
-- 정상적으로 수행되었나는 확인하는 용도로 사용된다.

-- 오라클에서는 관리자가 새로운 사용자를 생성하면
-- 아무런 권한도 없는 상태로 둔다.
-- 새로 생성된 사용자는 id, password를 입력해도 접속 자체가 되지 않는다.
-- 관리자는 새로 생성된 사용자에게 DBMS에 접속 할수 있는 권한을 부여한다.
-- 권한과 관련된 명령어 셋을 DCL(Data Controll Language) 라고 한다.
-- 권한과 관련된 keyword

-- 권한을 부여 : GRANT
-- 권한을 뺏기 : REVOKE
-- 새로 생성한 user1에 권한 부여하는 연습

-- CREATE SESSION(접속설정, 접속생성) 권한을 user1에게 부여하라
GRANT CREATE SESSION TO user1;

-- USER1에게는 CREATE SESSION 권한만을 부여 했기 때문에
-- 여러 명령들을 사용하는 것이 거의 불가능하다
-- 오라클은 보안정책으로 새로 생성된 사용자가 어떤 명령을 수행하려면
-- 사용할수 있는 명령들을 일일이 부여 해 주어야 한다.
-- 이러한 정책 때문에 오라클DBMS를 학습하는데 초기에 어려움이 있어서
-- 일단, 자세한 권한 정책을 학습하기 앞서 표준 SQL 등을 학습하기가 용이 하도록
-- 일반 사용자에게 DBA 권한을 부여하여 사용하자.!!

-- 오라클의 DBA 권한
-- SYSDBA에 비해 상당히 제한적으로 부여된 권한으로
-- 일부 DDL 명령, DML 명령, 일부 DCL 명령을 사용할수 있는 권한을 갖는다.
GRANT DBA TO user1;

-- 권한을 회수(뺏는) 하기
REVOKE DBA FROM user1;










