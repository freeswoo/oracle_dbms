-- USER 3 화면입니다.
-- 테이블 구조를 조회
DESC tbl_student;

-- tbl_student 테이블을 테스트하기 위해
-- 원본테이블을 손상하지 않고 테스트를 수행하기 위해서
-- 테이블을 복제하자
CREATE TABLE tbl_test_std
AS
SELECT * FROM tbl_student ;
SELECT * FROM tbl_test_std;

DESC tbl_student;
/*
이름       널?       유형             
-------- -------- -------------- 
ST_NUM   NOT NULL VARCHAR2(3)      PRIMARY KEY : NOT NULL UNIQUE가 포함된 기본키
ST_NAME  NOT NULL NVARCHAR2(50)  
ST_TEL            VARCHAR2(20)   
ST_ADDR           NVARCHAR2(125) 
ST_GRADE          NUMBER(1)      
ST_DEPT           VARCHAR2(3) 
*/

DESC tbl_test_std;
/*
이름       널?       유형             
-------- -------- -------------- 
ST_NUM            VARCHAR2(3)    
ST_NAME  NOT NULL NVARCHAR2(50)  
ST_TEL            VARCHAR2(20)   
ST_ADDR           NVARCHAR2(125) 
ST_GRADE          NUMBER(1)      
ST_DEPT           VARCHAR2(3)
*/

-- 테스트를 위해서
-- tbl_student 테이블을 tbl_test_std 테이블로 통짜 복제를 했는데
-- 테이블을 복제하면, 데이터형식, 데이터들 그리고 NOT NULL등 일부는 그대로 복제가 되는데
-- PK 등 중요한 제약조건들은 무시되고 복제 되지 않는다.
-- 복제된 테이블에 제약조건 추가를 해야 한다.

-- 또는
-- 테이블을 생성할 당시에는 제약조건들이 필요하지 않아서
-- 작성하지 않았는데 나중에 사용하다 보니 제약조건들이 필요한 경우가 생겨서
-- 테이블을 새로 작성하지 않고 제약조건들만 추가하는 방법

-- 1. NOT NULL 제약조건
--  칼럼에 값이 없으면 INSERT가 실행되지 않도록 하는 제약조건
ALTER TABLE tbl_test_std MODIFY(st_name nVARCHAR2(50) NOT NULL);
-- 만약 st_name의 칼럼에 값이 없는 레코드가 있으면 이 명령은 오류를 낸다.
-- 값이 없는 레코드에 일단 값들을 채워넣고(UPDATE)를 실행한 후 명령을 수행해야 한다.

-- 2. UNIQUE 제약조건
--  칼럼에 중복값이 추가되지 않도록 하는 제약조건
ALTER TABLE tbl_test_std ADD UNIQUE(st_num);
-- 만약 st_num의 칼럼에 중복된 값이 있으면 이 명령은 오류를 낸다.

-- 3. PRIMARY KEY 제약조건
--  데이터가 없거나, 중복된 값을 추가하지 못하며, 해당 칼럼은 PK로 설정된다
--  PK로 설정된 칼럼은 내부적으로 자동으로 INDEX 라는 OBJECT가 생성된다.
-- TABLE CREATE 할때는 단순히 PRIMARY KEY만 지정해주면 PK 칼럼을 설정할 수 있었는데
-- ALTER TABLE을 사용해서 PK를 추가할때는 가급적 이름을 지정해 주는 것이 좋다.
-- DBMS 에 따라 이름을 지정하지 않으면 실행이 안되는 경우도 있다.

-- tbl_test_std 테이블에 key_st_num라는 이름으로 st_num 칼럼을 PK로 설정하라
ALTER TABLE tbl_test_std ADD CONSTRAINT key_st_num PRIMARY KEY(st_num);

-- 경우에 따라서 PK를 다중칼럼으로 설정하는 경우도 있다.
ALTER TABLE tbl_test_std ADD CONSTRAINT key_st_name_tel PRIMARY KEY(st_name, st_tel);

-- 4. CHECK 제약조건
--  데이터를 추가할때 어떤 칼럼에 저장되는 데이터를 제한하고자 할때
-- ST_GRADE 칼럼에 값을 1부터 4까지 범위의 숫자만 저장하라
-- 그리고 그 제약조건 이름으로 ST_GRADE_CHECK라고 등록하라
ALTER TABLE tbl_test_std ADD CONSTRAINT ST_GRADE_CHECK CHECK(ST_GRADE BETWEEN 1 AND 4);

-- ST_GENDER 칼럼에는 문자열 '남','여' 만 입력할 수 있다.
-- ALTER TABLE tbl_test_std ADD CONSTRAINT ST_GENDER_CHECK CHECK(ST_GENDER IN ('남','여'));

-- ※ CONSTAINT 이름을 지정하는 이유
-- 이름이 지정되지 않으면 나중에 조건이 필요 없어서 삭제를 하고자 할때
-- 삭제가 어려워 질수 도 있다.

-- 5. UNIQUE 제약조건을 삭제
ALTER TABLE tbl_test_std DROP UNIQUE(st_num);

-- 6. CHECK 제약조건 삭제
-- ST_GRADE_CHECK 이름으로 등록된 제약조건 삭제
-- CASCADE : 연관된 모은 조건을 같이 삭제하라
--      시스템상에서 설정된 제약조건과 관련된 설정값을 모두 삭제하라
ALTER TABLE tbl_test_std DROP CONSTRAINT ST_GRADE_CHECK CASCADE;

-- 7. 참조무결성 설정
--      tbl_score2에 데이터를 추가하거나 학번을 변경할때
--      tbl_test_std 테이블을 참조하여
--      학번(s_num, st_num)의 관계를 명확히 하여
--      EQ JOIN을 실행했을때
--      결과가 신뢰성을 보장하는 제약조건 설정
/*
==========================================
    tbl_score             tbl_test_std
------------------------------------------
    s_num                  st_num
    있다         >>      반드시 있다.
  있을수도 있다  <<      있다
    절대 없다    <<      없다
==========================================
*/

ALTER TABLE tbl_score2
ADD CONSTRAINT fk_std_score2
FOREIGN KEY (s_num)
REFERENCES tbl_test_std(st_num) ;










