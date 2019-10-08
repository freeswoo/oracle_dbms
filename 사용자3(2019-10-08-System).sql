-- 여기는 USER3 화면입니다

-- 오라클 전용 System 쿼리
-- 현재 사용중인 DBMS 엔진의 전역적(전체적인) 명칭, 정보 확인
SELECT * FROM v$database; 

-- 현재 사용자가 접근(CRUD) 할수 있는 TABLE 목록
SELECT * FROM TAB;

-- ※ DBA 급 이상의 사용자가 전체 TABLE 리스트를 확인할수 있는 명령
SELECT * FROM ALL_TABLES;

-- tbl_books의 테이블 구조(CREATE TABLE을 생성 했을때의 모양)
DESC tbl_books;
DESCRIBE tbl_books;

-- SELECT * FROM TAB 과 거의 유사한 형태
-- 사용자 권한에 따라 FROM TAB과 다른 리스트가 출력되기도 한다.
SELECT * FROM user_tables;







