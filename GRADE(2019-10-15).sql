-- 여기는 GRADE 화면입니다.
-- PK 지정방법을 칼럼에 PRIMARY KEY를 지정하지 않고
-- 별도로 CONSTRAINT 추가방식으로 지정
-- 표준 SQL에서는 PK 지정방식을 칼럼에 PRIMARY KEY 키워드 지정방식으로 사용하는데
-- 간혹 표준 SQL의 PK 지정방식이 않되는 DBMS가 있다.
-- 이때는 별도의 CONSTRAINT 추가 방식으로 지정해야 한다.
-- 이 방식은 다수의 칼럼으로 PK를 지정할때도 사용한다.
CREATE TABLE tbl_score(

    s_id	NUMBER,
    s_std	nVARCHAR2(50)	NOT NULL,	
    s_subject	nVARCHAR2(50)	NOT NULL,
    s_score	NUMBER(3)	NOT NULL,
    s_rem	nVARCHAR2(50),
    CONSTRAINT pk_score PRIMARY KEY(s_id)

);

-- 엑셀데이터 성적일람표 임포트
SELECT COUNT(*) FROM tbl_score;

SELECT * FROM tbl_score;

-- 학생별로 총점, 평균
-- 1. 학생(s_std) 데이터가 같은 레코드를 묶기
-- 2. 묶어진 그룹내에서 총점과 평균 계산
SELECT s_std, 
    sum(s_score) AS 총점, 
    ROUND(avg(s_score),0) AS 평균
FROM tbl_score
GROUP BY s_std
ORDER BY s_std;

/*
 학생이름-과목-점수 형식으로 저장된 데이터를
 
 학생이름-국어-영어-수학-과학...형식으로 펼쳐서 보기
*/
-- 1. tbl_score에 저장된 과목명들을 확인
--  데이터에 어떤 과목들이 저장되 있나 확인
SELECT s_subject FROM tbl_score
GROUP BY s_subject
ORDER BY s_subject ;

/*
과학
국사
국어
미술
수학
영어
*/

/*
 성적테이블을
 각 과목이름으로 칼럼을 만들어서 생성을 하면
 데이터를 추가하거나, 단순 조회를 할때는 상당히 편리하게 사용할수 있다.
 하지만, 사용중에 과목이 추가되거나 과목명이 변경되는 경우
 테이블의 칼럼을 변경해야 하는 상황이 발생한다.
    테이블의 칼럼을 변경하는 것은 DBMS 입장에서나 사용자 입장에서
    많은 비용(사용중지 시간, 노력, 위험성 등등)을 지불해야 한다.
    테이블의 칼럼을 변경하는 일은 매우 신중해야 한다.
 
 그래서 실제 데이터는 고정된 칼럼으로 생성된 테이블에 저장을 하고
 View로 확인을 할때 PIVOT 방식으로 펼쳐 보면
 마치 실제 테이블에 칼럼이 존재하는 것처럼 사용을 할수 있는 장점이 있다.
*/
SELECT s_std AS 학생,
    SUM(DECODE(s_subject,'과학',s_score)) AS 과학,
    SUM(DECODE(s_subject,'국사',s_score)) AS 국사,
    SUM(DECODE(s_subject,'국어',s_score)) AS 국어,
    SUM(DECODE(s_subject,'미술',s_score)) AS 미술,
    SUM(DECODE(s_subject,'수학',s_score)) AS 수학,
    SUM(DECODE(s_subject,'영어',s_score)) AS 영어
FROM tbl_score GROUP BY s_std;
ORDER BY s_std;

-- 오라클 11g 이후에 사용하는 PIVOT 전용 문법
-- SQL Developer에서 명령수행에 제한이 있다.
-- main from절에 SUB QUERY를 사용해서 테이블을 지정해야 한다.
SELECT *
FROM ( SELECT s_std, s_subject, s_score FROM tbl_score)
PIVOT (
    SUM(s_score) -- 칼럼이름별로 분리하여 표시할 데이터
    FOR s_subject -- 묶어서 펼칠 칼럼 이름
    IN (        -- 펼쳤을때 보여질 칼럼 이름 목록
                    '과학' AS 과학,
                    '국사' AS 국사,
                    '국어' AS 국어,
                    '미술' AS 미술,
                    '수학' AS 수학,
                    '영어' AS 영어
       )
    )
ORDER BY s_std;

CREATE VIEW view_score
AS
(
SELECT s_std AS 학생,
    SUM(DECODE(s_subject,'과학',s_score)) AS 과학,
    SUM(DECODE(s_subject,'국사',s_score)) AS 국사,
    SUM(DECODE(s_subject,'국어',s_score)) AS 국어,
    SUM(DECODE(s_subject,'미술',s_score)) AS 미술,
    SUM(DECODE(s_subject,'수학',s_score)) AS 수학,
    SUM(DECODE(s_subject,'영어',s_score)) AS 영어,
    SUM(s_score) AS 총점,
    ROUND(AVG(s_score),0) AS 평균,
    RANK() OVER (ORDER BY SUM(s_score) DESC ) AS 석차
FROM tbl_score GROUP BY s_std
-- ORDER BY s_std
);

SELECT * FROM view_score
ORDER BY 학생 ;
