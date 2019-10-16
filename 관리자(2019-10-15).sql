-- 여기는 관리자 화면입니다.
/*
    TABLESPACE 생성
    이름 : grade_db
    데이터 파일 : c:/bizwork/oracle/data/grade.dbf
    초기 사이즈 : 10MB
    자동증가 옵션 : 10KB씩
*/
-- DROP TABLESPACE grade_db;

CREATE TABLESPACE grade_db
DATAFILE '/bizwork/oracle/data/grade.dbf'
SIZE 10M AUTOEXTEND ON NEXT 10K;

/*
    사용자 생성 : 스키마 생성(TABLE들을 관리하는 주체)
    ID : grade
    PW : grade
    권한 : DBA
    DEFAULT TABLESPACE : grade_DB
*/
CREATE USER grade IDENTIFIED BY grade
DEFAULT TABLESPACE grade_DB;
GRANT DBA TO grade;
SELECT * FROM ALL_USERS WHERE username = 'GRADE';

-- 사용자 비빌번호 변경
ALTER USER grade IDENTIFIED BY grade;




