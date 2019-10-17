-- 여기는 iolist 화면입니다.

-- 매입매출장 TABLE 생성
CREATE TABLE tbl_iolist (
    io_seq	NUMBER	NOT NULL	PRIMARY KEY,
    io_date	VARCHAR2(10)	NOT NULL,	
    io_pname	nVARCHAR2(50)	NOT NULL,	
    io_dname	nVARCHAR2(50)	NOT NULL,	
    io_dceo	nVARCHAR2(20),		
    io_inout	NUMBER(1)	NOT NULL,	
    io_qty	NUMBER	NOT NULL,	
    io_price	NUMBER,		
    io_amt	NUMBER		
);
-- 데이타 임포트 확인
SELECT io_inout, COUNT(*) FROM tbl_iolist
GROUP BY io_inout;

SELECT DECODE(io_inout, 1, '매입','매출') AS 구분,
    COUNT(*)
FROM tbl_iolist
GROUP BY DECODE(io_inout, 1, '매입','매출');

SELECT DECODE(io_inout, 1, '매입', 2,'매출') AS 구분,
    COUNT(*)
FROM tbl_iolist
GROUP BY DECODE(io_inout, 1, '매입', 2,'매출');

/*

IF(칼럼 == 값) {
    T표시
} else if(칼럼 == 값2) {
    T표시2
}

1개의 칼럼이 여러가지 값을 가지고 있을때
다중 조건으로 처리하고자 하면
DECODE는 좋은 코딩 모양을 이룰수 있다.
DECODE(칼럼, 값1,T결과1,DECODE(칼럼,값2,T결과2,DECODE(칼럼,값3,T결과3)))
DECODE(칼럼,값1,T결과,값2,T결과2,값3,T결과3)
*/

SELECT DECODE(io_inout, 1, '매입',
        DECODE(io_inout, 2,'매출'))
FROM tbl_iolist;

SELECT DECODE(io_inout, 1, '매입', 2,'매출')
FROM tbl_iolist;
    
SELECT DECODE(io_inout, 1, '매입', 2,'매출') AS 거래구분,
    SUM(DECODE(io_inout, 1, io_amt, 0)) AS 매입합계,
    SUM(DECODE(io_inout, 2, io_amt, 0)) AS 매출합계
FROM tbl_iolist
GROUP BY DECODE(io_inout, 1, '매입', 2,'매출') ;

SELECT SUM(DECODE(io_inout, 1, io_amt, 0)) AS 매입합계,
    SUM(DECODE(io_inout, 2, io_amt, 0)) AS 매출합계
FROM tbl_iolist;

-- 날짜별 매입매출 합계
SELECT
    io_date, SUM(DECODE(io_inout, 1, io_amt, 0)) AS 매입합계,
    SUM(DECODE(io_inout, 2, io_amt, 0)) AS 매출합계
FROM tbl_iolist
GROUP BY io_date ;

-- LEFT : 표준 SQL에서 왼쪽부터 문자열 자르기
-- RIGHT : 오른쪽부터 문자열 자르기
-- MID(문자열,시작,개수) : 중간문자열 자르기

SELECT SUBSTR(io_date,0,7) AS 월,
    SUM(DECODE(io_inout, 1, io_amt, 0)) AS 매입합계,
    SUM(DECODE(io_inout, 2, io_amt, 0)) AS 매출합계,

    SUM(DECODE(io_inout, 2, io_amt, 0)) -
    SUM(DECODE(io_inout, 1, io_amt, 0)) AS 마진

FROM tbl_iolist
GROUP BY SUBSTR(io_date,0,7)
ORDER BY SUBSTR(io_date,0,7);






