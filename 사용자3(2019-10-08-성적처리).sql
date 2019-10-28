-- 여기는 USER3 화면입니다.

CREATE TABLE tbl_score(
    s_num	VARCHAR2(3)		PRIMARY KEY,
    s_kor	NUMBER(3),		
    s_eng	NUMBER(3),		
    s_math	NUMBER(3)		
);
DESC tbl_score;

INSERT INTO tbl_score(s_num, s_kor, s_eng, s_math)
VALUES('001','90','80','70');

INSERT INTO tbl_score(s_num, s_kor, s_eng, s_math)
VALUES('002','90','80','70');

INSERT INTO tbl_score(s_num, s_kor, s_eng, s_math)
VALUES('003','90','80','70');

INSERT INTO tbl_score(s_num, s_kor, s_eng, s_math)
VALUES('004','90','80','70');

INSERT INTO tbl_score(s_num, s_kor, s_eng, s_math)
VALUES('005','90','80','70');

INSERT INTO tbl_score(s_num, s_kor, s_eng, s_math)
VALUES('007','90','80','70');

INSERT INTO tbl_score(s_num, s_kor, s_eng, s_math)
VALUES('008','90','80','70');

SELECT * FROM tbl_score;

-- 성적의 총점, 평균
SELECT s_kor, s_eng, s_math,
    s_kor + s_eng + s_math AS 총점,
    (s_kor + s_eng + s_math) / 3 AS 평균
FROM tbl_score;

-- 50부터 100까지 임의의 정수 생성
-- ROUND(DBMS_RANDOM.VALUE(50,100),0)

UPDATE tbl_score
SET s_kor = ROUND(DBMS_RANDOM.VALUE(50,100),0),
    s_eng = ROUND(DBMS_RANDOM.VALUE(50,100),0),
    s_math = ROUND(DBMS_RANDOM.VALUE(50,100),0);

SELECT * FROM tbl_score;

UPDATE tbl_score
SET s_math = 100
WHERE s_math = 70;

SELECT * FROM tbl_score;

UPDATE tbl_score
SET s_math = 70
WHERE s_num = '008';

SELECT s_kor, s_eng, s_math,
    s_kor + s_eng + s_math AS 총점,
    (s_kor + s_eng + s_math) / 3 AS 평균
FROM tbl_score;

SELECT s_kor, s_eng, s_math,
    s_kor + s_eng + s_math AS 총점,
    ROUND((s_kor + s_eng + s_math) / 3 , 0) AS 평균
FROM tbl_score;

SELECT s_kor, s_eng, s_math,
    s_kor + s_eng + s_math AS 총점,
    ROUND((s_kor + s_eng + s_math) / 3 , 0) AS 평균
FROM tbl_score
WHERE (s_kor + s_eng + s_math)/3 >= 80 ;

SELECT s_kor, s_eng, s_math,
    s_kor + s_eng + s_math AS 총점,
    ROUND((s_kor + s_eng + s_math) / 3 , 0) AS 평균
FROM tbl_score
-- 계산한 결과(평균)이 70 부터 80까지인 경우만 표시
WHERE (s_kor + s_eng + s_math)/3 BETWEEN 70 AND 80 ;

-- 통계, 집계함수
-- SUM(), COUNT(), AVG(), MAX(), MIN()

-- 전체리스트의 각 과목별 총점 계산하고 싶다.
SELECT SUM(s_kor)
FROM tbl_score;

SELECT SUM(s_kor) AS 국어총점,
        SUM(s_eng) AS 영어총점,
        SUM(s_math) AS 수학총점
FROM tbl_score;

SELECT SUM(s_kor) AS 국어총점,
        SUM(s_eng) AS 영어총점,
        SUM(s_math) AS 수학총점,
        SUM(s_kor + s_eng + s_math) AS 전체총점
FROM tbl_score;

SELECT SUM(s_kor) AS 국어총점,
        SUM(s_eng) AS 영어총점,
        SUM(s_math) AS 수학총점,
        SUM(s_kor + s_eng + s_math) AS 전체총점,
        ROUND(AVG((s_kor + s_eng + s_math) /3),0) AS 전체평균
FROM tbl_score;

SELECT COUNT(*)
FROM tbl_score;

SELECT COUNT(s_num), COUNT(s_kor), COUNT(s_eng)
FROM tbl_score;

SELECT MAX(s_kor + s_eng + s_math) AS 최고점
FROM tbl_score;

SELECT MIN(s_kor + s_eng + s_math) AS 최저점
FROM tbl_score;

SELECT MAX(s_kor + s_eng + s_math) AS 최고점,
        MIN(s_kor + s_eng + s_math) AS 최저점
FROM tbl_score;

SELECT s_kor, s_eng, s_math,
        (s_kor + s_eng + s_math) AS 총점
FROM tbl_score;        

-- 개인 총점이 200점 이상인 리스트들의 집계
SELECT SUM(s_kor) AS 국어총점,
        SUM(s_eng) AS 영어총점,
        SUM(s_math) AS 수학총점,
        SUM(s_kor + s_eng + s_math) AS 전체총점,
        ROUND(AVG((s_kor + s_eng + s_math) /3),0) AS 전체평균
FROM tbl_score
WHERE s_kor + s_eng + s_math >= 200 ;

-- 개인별 평균이 70 이상인 리스트들의 집계
SELECT SUM(s_kor) AS 국어총점,
        SUM(s_eng) AS 영어총점,
        SUM(s_math) AS 수학총점,
        SUM(s_kor + s_eng + s_math) AS 전체총점,
        ROUND(AVG((s_kor + s_eng + s_math) /3),0) AS 전체평균
FROM tbl_score
WHERE (s_kor + s_eng + s_math) / 3 >= 70 ;

-- 1. (s_kor + s_eng + smath)를 계산하고
-- 2. 계산결과를 내림차순으로 정렬하고
-- 3. 순서대로 값을 매겨라
SELECT s_num, s_kor + s_eng + s_math AS 총점,
    RANK() OVER ( ORDER BY (s_kor + s_eng + s_math) DESC ) AS 석차
FROM tbl_score
ORDER BY s_num;

-- 만약 중복된 값이 있으면 중복값 처리를 하라
-- RANK() : 동점자가 있을때 순위를 건너뛰고 표시
-- DENSE_RANK() : 동점자가 있어도 다음 값을 연속해서 표시
/*
값     RANK()    DENSE_RANK()
-----------------------------
200     1           1
190     2           2
190     2           2       
180     4           3
170     5           4
160     6           5
-----------------------------
*/
SELECT s_num, s_kor + s_eng + s_math AS 총점,
    DENSE_RANK() OVER ( ORDER BY (s_kor + s_eng + s_math) DESC ) AS 석차
FROM tbl_score
ORDER BY s_num;

CREATE TABLE tbl_score2 (
    s_num	VARCHAR2(3)		PRIMARY KEY,
    s_dept	VARCHAR2(3),		
    s_kor	NUMBER(3),		
    s_eng	NUMBER(3),		
    s_math	NUMBER(3)		
);

CREATE TABLE tbl_dept (
    d_num	VARCHAR2(3)		PRIMARY KEY,
    d_name	nVARCHAR2(20)	NOT NULL,	
    d_pro	VARCHAR2(3)		
);

