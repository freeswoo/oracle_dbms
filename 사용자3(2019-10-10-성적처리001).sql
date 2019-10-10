-- 여기는 USER3 화면입니다.

CREATE TABLE tbl_student (

    st_num	VARCHAR2(3)		PRIMARY KEY,
    st_name	nVARCHAR2(50)	NOT NULL,	
    st_tel	VARCHAR2(20),		
    st_addr	nVARCHAR2(125),		
    st_grade	NUMBER(1),		
    st_dept	VARCHAR2(3)		

);

SELECT COUNT(*) FROM tbl_student;
SELECT * FROM tbl_student;

SELECT * FROM tbl_score2;
SELECT * FROM tbl_score;

-- score 테이블의 성적리스트를 확인을 했더니
-- 학번은 테이블에 저장이 되어 있는데 학번에 해당하는 학생이 누구인지 모르겠다.
-- student 테이블과 JOIN을 실행해서 성적정보를 확인하고자 한다.

-- 현재 score 테이블의 s_num 칼럼의 모든 데이터가
-- student 테이블의 st_num 칼럼에 모두 있기 때문에 EQ JOIN
-- 데이터를 확인 할 수 있다.
SELECT *
FROM tbl_score, tbl_student
WHERE tbl_score.s_num = tbl_student.st_num ;

-- 테이블명에 Alias를 설정해서 SELECT
SELECT *
FROM tbl_score SC, tbl_student ST
WHERE SC.s_num = ST.st_num;

-- 보고자 하는 칼럼만 나열해서 필요한 정보만 확인하기
-- SELECT * 는 데이터가 많을경우 조회하는데 다소 시간이 많이 소요되기도 한다
-- SELECT를 수행할때 보고자하는 칼럼들을 나열하는 것이
-- 효율성 면에서 좋다.
SELECT SC.s_num, ST.st_name, SC.s_kor, SC.s_eng, SC.s_math
FROM tbl_score SC, tbl_student ST
WHERE SC.s_num = ST.st_num;

-- 성적데이터에 임의 데이터를 추가
INSERT INTO tbl_score(s_num, s_kor, s_eng, s_math)
VALUES('101','90','88','77') ;

-- 아직 학생테이블에 새로운(101) 학생정보를 추가하지 않은 상태에서
-- 성적정보만 추가를 한 경우
-- EQ JOIN을 실행하면 새로운 학생정보의 성적은 출력이 되지 않는다.
SELECT SC.s_num, ST.st_name, SC.s_kor, SC.s_eng, SC.s_math
FROM tbl_score SC, tbl_student ST
WHERE SC.s_num = ST.st_num;

-- score 테이블과 student 테이블간에 
-- 참조무결성이 유지되지 않고 있는 상황이 되었다
-- 참조무결성이 완전하지 않은 경우는 EQ JOIN으로 데이터를 조회하면 안된다.
-- 이경우에는 실제 저장되어 있는 데이터들이 누락되어 출력 되기 때문에
-- LEFT JOIN을 사용해서 조회
SELECT SC.s_num, ST.st_name, SC.s_kor, SC.s_eng, SC.s_math
FROM tbl_score SC -- 조회하고자 하는 주(main) 데이터
    LEFT JOIN tbl_student ST -- 연결해서 보고자 하는 보조데이터(sub, detail) 데이터
        ON SC.s_num = ST.st_num; -- 연계할 조건 설정
        
SELECT SC.s_num, ST.st_name, SC.s_kor, SC.s_eng, SC.s_math,
        SC.s_kor + SC.s_eng + SC.s_math AS 총점,
        ROUND((SC.s_kor + SC.s_eng + SC.s_math)/3,0) AS 평균
FROM tbl_score SC
    LEFT JOIN tbl_student ST
        ON SC.s_num = ST.st_num;

-- score2 에 데이터를 추가하기
DESC tbl_score2;
SELECT * FROM tbl_score2;

SELECT SC.s_num, ST.st_name, SC.s_kor, SC.s_eng, SC.s_math,
        SC.s_kor + SC.s_eng + SC.s_math AS 총점,
        ROUND((SC.s_kor + SC.s_eng + SC.s_math)/3,0) AS 평균
FROM tbl_score2 SC
    LEFT JOIN tbl_student ST
        ON SC.s_num = ST.st_num;

-- 학과 데이터 추가
INSERT INTO tbl_dept(d_num, d_name, d_pro)
VALUES('001','컴퓨터공학','홍길동');

INSERT INTO tbl_dept(d_num, d_name, d_pro)
VALUES('002','영어영문','성춘향');

INSERT INTO tbl_dept(d_num, d_name, d_pro)
VALUES('003','경영학','임꺽정');

INSERT INTO tbl_dept(d_num, d_name, d_pro)
VALUES('004','정치경제','장보고');

INSERT INTO tbl_dept(d_num, d_name, d_pro)
VALUES('005','군사학','이순신');

-- 데이터를 추가하려고 했더니 칼럼 길이가 짧아 추가가 되지 않는다
-- 테이블을 임시로 변경
-- VARCHAR2(3) : 영문기준으로 3글자, 한글 3글자 입력 안됨
-- nVARCHAR2(3) : 유니코드 기준 3글자, 한글 3글자 입력가능
ALTER TABLE tbl_dept MODIFY ( d_pro nVARCHAR2(3));

-- 성적테이블(score) 과 학과테이블(dept)을 JOIN
SELECT SC.s_num, DP.d_name, DP.d_pro, SC.s_kor
FROM tbl_score2 SC
    LEFT JOIN tbl_dept DP
        ON SC.s_dept = DP.d_num;

-- 성적테이블과 학생테이블, 학과테이블을 연계하여
-- 학생이름, 학과이름을 같이 조회하고 싶다.

-- 성적테이블(주), 학생정보(보조), 학과정보(보조)를 JOIN하여
-- 원하는 정보를 조회하기
SELECT  SC.s_num, ST.st_name,
        SC.s_dept, DP.d_name, DP.d_pro,
        SC.s_kor, SC.s_eng, SC.s_math,
        SC.s_kor + SC.s_eng + SC.s_math AS 총점,
        ROUND((SC.s_kor + SC.s_eng + SC.s_math)/3,0) AS 평균
FROM tbl_score2 SC
    LEFT JOIN tbl_student ST
        ON SC.s_num = ST.st_num
    LEFT JOIN tbl_dept DP
        ON SC.s_dept = DP.d_num;
        
-- 위 SQL을 활용하여 컴퓨터공학 학생들 성적만 확인
SELECT  SC.s_num, ST.st_name,
        SC.s_dept, DP.d_name, DP.d_pro,
        SC.s_kor, SC.s_eng, SC.s_math,
        SC.s_kor + SC.s_eng + SC.s_math AS 총점,
        ROUND((SC.s_kor + SC.s_eng + SC.s_math)/3,0) AS 평균
FROM tbl_score2 SC
    LEFT JOIN tbl_student ST
        ON SC.s_num = ST.st_num
    LEFT JOIN tbl_dept DP
        ON SC.s_dept = DP.d_num
WHERE DP.d_name = '컴퓨터공학' ;



CREATE VIEW view_score
AS
(
SELECT  SC.s_num, ST.st_name,
        SC.s_dept, DP.d_name, DP.d_pro,
        SC.s_kor, SC.s_eng, SC.s_math,
        SC.s_kor + SC.s_eng + SC.s_math AS 총점,
        ROUND((SC.s_kor + SC.s_eng + SC.s_math)/3,0) AS 평균
FROM tbl_score2 SC
    LEFT JOIN tbl_student ST
        ON SC.s_num = ST.st_num
    LEFT JOIN tbl_dept DP
        ON SC.s_dept = DP.d_num
);

-- SELECT SQL을 수행해서 결과를 얻고자 할때
-- 매우 복잡한 SQL문을 매번 실행하는 것은 매우 비 효율적(코딩적 문제에서)이다.
-- DBMS에서는 SELECT SQL문을 마치 물리적 table인 것처럼 취급할 수 있도록
-- VIEW OBJECT를 제공한다.
-- VIEW OBJECT를 SELECT 실행을 하면
-- DBMS는 실제 table에서 VIEW OBJECT에 설정된 SQL문을 실행하여
-- 결과를 보여준다.
-- 실제 데이터는 가지고 있지 않고, 물리적 table로 부터 데이터를 가져와서
-- 보여주는 역할만 수행하는 가상의 table
-- 단, VIEW 만들기 위한 SQL 문에는 ORDER BY를 사용할수 없다.
SELECT * FROM view_score;

SELECT * FROM view_score
WHERE d_name = '컴퓨터공학';

SELECT * FROM view_score
ORDER BY s_num ;

DESC view_score;

-- 한번 VIEW로 생성을 해 두면
-- 마치 물리적 table이 있는것과 같이 작동을 하며
-- SELECT 문의 다양한 옵션들을 사용하여
-- 데이터를 조회할 수 있다.

SELECT * FROM view_score
WHERE 평균 > 80 ;

SELECT * FROM view_score
WHERE 평균 BETWEEN 70 AND 90 ;

SELECT * FROM view_score
WHERE 평균 >= 70 AND 평균 <= 90 ;

SELECT * FROM view_score
WHERE s_dept IN('001','003')
ORDER BY d_name ;

SELECT * FROM view_score
WHERE s_dept = '001' OR s_dept = '003'
ORDER BY d_name ;

-- 칼럼의 데이터가 문자열일 경우도
-- 모든 데이터의 자릿수가 같으면
-- BETWEEN을 사용하여 범위 조회가 가능하다.
SELECT * FROM view_score
WHERE s_dept BETWEEN '001' AND '003'
ORDER BY s_dept;

-- d_name 칼럼 값이 컴퓨터 문자열로 시작되는 데이터들
SELECT * FROM view_score
WHERE d_name LIKE '컴퓨터%';

-- d_name 칼럼 값이 공학 문자열로 끝나는 데이터들
-- LIKE에서 %가 앞에 나오는 조회명령문은
-- 가급적 사용을 자제하자
SELECT * FROM view_score
WHERE d_name LIKE '%공학';

-- 값과 값을 연결하여 하나의 문자열처럼 출력하기
/*
SELECT s_num || ' : ' || st_name : 오라클
SELECT s_num & ' : ' & st_name 
SELECT s_num + ' : ' + st_name 
*/
SELECT s_num || ' : ' || st_name
FROM view_score;

-- Java 등 프로그래밍 코딩으로 SQL을 작성할때는
-- LIKE 키워드의 문자열을 연결문자열로 작성해야 한다.
SELECT * FROM view_score
WHERE d_name LIKE '컴퓨터' || '%';

-- 해당 칼럼의 데이터가 다수 존재할때
-- 중복되지 않는 데이터만 출력하는 키워드
-- 같은 칼럼에 있는 동일한 값은 한번만 출력하라
SELECT DISTINCT s_dept, d_name
FROM view_score
ORDER BY s_dept;

-- 다수 칼럼을 DISTINCT로 묶으면
-- 원하는 결과가 나오지 않는다.
SELECT DISTINCT s_dept, d_name, s_num
FROM view_score
ORDER BY s_dept;

-- 표준 SQL
SELECT s_dept, d_name
FROM view_score
GROUP BY s_dept, d_name
ORDER BY s_dept;

-- GROUP BY
-- 특정칼럼을 기준으로 하여 집계를 할때 사용하는 명령 절

-- 1. 학과별로 국어점수의 총점을 계산하고 싶다.
--  각 학과별로 그룹으로 묶고 국어점수의 총점을 계산한 후
--  학과번호 순으로 보여달라
--  부분합 집계
SELECT s_dept, d_name, d_pro, SUM(s_kor)
FROM view_score
GROUP BY s_dept, d_name, d_pro
ORDER BY s_dept;
-- GROUP BY로 묶어서 부분합을 보고자 할때
-- 기준으로 하는 칼럼 이외에 SELECT문에 나열된 칼럼들 중
-- 집계함수로 감싸지 않은 칼럼들은
-- GROUP BY 절 다음에 나열을 해 주어야 한다.

-- 학번, 학과코드로 묶어서 보여주는 데이터는
-- 의미 없는 명령문이다.
-- ※ GROUP 으로 묶어서 집계를 낼때는
--   어떤 칼럼들을 묶을것인지에 대한 많은 고민을 해야 한다.
SELECT s_num, s_dept, d_name, d_pro, SUM(s_kor)
FROM view_score
GROUP BY s_num, s_dept, d_name, d_pro
ORDER BY s_dept;

-- 컴퓨터공학, 영어영문 학과만 추출하여
-- 집계하기
SELECT s_dept, d_name, d_pro,
        SUM(s_kor) AS 국어총점,
        SUM(s_eng) AS 영어총점,
        SUM(s_math) AS 수학총점
FROM view_score
WHERE d_name IN ('컴퓨터공학','영어영문')
GROUP BY s_dept, d_name, d_pro
ORDER BY s_dept;

-- GROUP BY를 실행할때
-- 조건을 부여하는 방법
-- WHERE 조건을 부여하는 방법 HAVING 조건을 부여하는 방법