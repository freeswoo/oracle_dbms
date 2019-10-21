-- 관리자 화면입니다.
/*
TABLESPACE 생성
이름 : USER4_DB
DATAFILE : '/bizwork/oracle/data/user4.dbf'
초기용량 : 10MB
자동확장 : 10KB
*/
CREATE TABLESPACE user4_db
DATAFILE '/bizwork/oracle/data/user4.dbf'
SIZE 10M AUTOEXTEND ON NEXT 10K;

/*
사용자 생성
ID : user4
PW : user4
DEFAULT TABLESPACE user4_db
권한 : DBA 권한
*/
CREATE USER user4 IDENTIFIED BY user4
DEFAULT TABLESPACE user4_db;

-- 사용자를 생성하면서 DEFAULT TABLESPACE를 지정하지 않으면
-- SYSTEM(관리자, 오라클 DBMS가 사용하는 영역)의 TABLESPACE를 사용한다.
-- 작은 규모에서는 큰 문제는 없지만
-- SYSTEM 영역을 사용하는 여러가지(보안, 관리)에서 좋은 방법이 아니다
-- DEFAULT TABLESPACE 나중에 추가하는 방법
-- 사용자와 관련하여 정보, 값들을 수정

-- 이미 생성된 사용자 ID의 TABLESPACE를 변경
ALTER USER user4 DEFAULT TABLESPACE user4_db;

-- 사용자를 생성하고, TABLE 등을 생성한 후에
-- DEFAULT TABLESPACE를 변경하면 ???
-- 보통 DBMS에서 TABLE 등을 TABLESPACE로 옮겨준다.
-- DATA가 많거나, 하는경우 문제를 일으키는 경우도 있다.
-- 사용중(TABLE...등이 있는)경우에는 가급적 변경하지 않는 것이 좋다.

-- 기존의 TABLESPACE에 있는 TABLE들을 수동으로 다른 TABLESPACE로 옮기기
-- 현제 사용자의 DEFAULT TABLESPACE에 있는 TABLE을 다른 TABLESPACE 옮기기

ALTER TABLE tbl_student MOVE TABLESPACE user4_db;
-- DEFAULT TABLESPACE를 생성하지 않고 데이터를 저장했을 경우
-- 새로운 TABLESPACE를 생성하고
-- 사용중이던 TABLE을 새로운 TABLESPACE로 옮기고
-- DEFAULT TABLESPACE를 변경하는 것이 좋겠다.

-- 사용자의 PASSWORD를 변경
ALTER USER user4 IDENTIFIED BY user4;

-- oracle 10 이상에서
-- TABLESPACE를 통째로 BACKUP하고 다른곳에서 옮겨서 사용할수 있도록 하는
-- 방법이 있다

GRANT DBA TO user4;
