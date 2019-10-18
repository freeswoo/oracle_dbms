-- 여기는 IOLIST 화면입니다.
-- 거래처정보 제2정규화 수행

-- 매입매출정보에 거래처정보가 거래처명과 대표명 두개의 칼럼이 있다.
-- 거래처명이 같은데 대표가 다른 거래처가 있을수 있기 때문에

-- 매입매출에서 거래처 정보 추출
SELECT io_dname, io_dceo
FROM tbl_iolist
GROUP BY io_dname, io_dceo
ORDER BY io_dname;

-- 거래처 테이블 생성
-- 거래처 테이블일 경우
-- 거래처명이 같고, 대표자명이 다른 데이터를 UNIQE 설정해보자
-- 입력할때 거래처명과 대표자명이 동시 같은 데이터는 INSERT되지 않도록 설정
CREATE TABLE tbl_dept (
    d_code	VARCHAR2(5)		PRIMARY KEY,
    d_name	nVARCHAR2(50)	NOT NULL,	
    d_ceo	nVARCHAR2(50)	NOT NULL,	
    d_tel	VARCHAR2(20),		
    d_addr	nVARCHAR2(125),		
    d_man	nVARCHAR2(20),
    CONSTRAINT UQ_name_ceo UNIQUE (d_name, d_ceo)
);
-- 테이블 생성후에 추가할 경우
ALTER TABLE tbl_dept
ADD CONSTRAINT UQ_name_ceo
UNIQUE (d_name, d_ceo) ;

SELECT COUNT(*)
FROM tbl_dept;

-- 거래처테이블 생성하고
-- 테이블 데이터를 한번 조회
-- 거래처명이 같고 CEO가 다른 거래처가 있는지 확인
-- 같은 거래처명이 있는지 확인
-- 아래 결과에서 COUNT가 2이상인 데이터
SELECT d_name, COUNT(*), COUNT(d_name)
FROM tbl_dept
GROUP BY d_name
HAVING COUNT(*) > 1 ;

-- iolist와 dept 테이블을 EQ JOIN dept 데이터가 잘 만들어 졌는지 검증
SELECT COUNT(*)
FROM tbl_iolist, tbl_dept
WHERE io_dname = d_name AND io_dceo = d_ceo ;

-- iolist 거래처 코드 칼럼 생성
ALTER TABLE tbl_iolist ADD io_dcode VARCHAR2(5);

UPDATE tbl_iolist
SET io_dcode =

(
    SELECT d_code
    FROM tbl_dept
    WHERE io_dname = d_name AND io_dceo = d_ceo
);

-- UPDATE 후 검증
SELECT COUNT(*)
FROM tbl_iolist, tbl_dept
WHERE io_dcode = d_code ;

SELECT * FROM tbl_iolist;

-- iolist에서 io_dname, io_dceo 칼럼 삭제
ALTER TABLE tbl_iolist DROP COLUMN io_dname;
ALTER TABLE tbl_iolist DROP COLUMN io_dceo;

SELECT * FROM tbl_iolist;

/*
iolist를 제2정규화를 수행해서 상품정보와 거래처정보를 TABLE 분리완성
iolist의 단가(io_price) 칼럼을 삭제하지 않고 유지 하고 있는 이유
iolist의 매입, 매출단가는 실제로 상품이 매입 매출되는 시점에 변동될수 있다.
        기준수량 입출 할때와 권장수량 입출 할때 밀어내기 입출 할때는
        단가가 달리 적용된다.
        기준단가(100개) : 1000, 권장수량(1000개) : 900, 밀어내기단가(5000개) 700
        iolist에는 실질적인 입출단가가 기록되어서
        결산수행의 기준값으로 삼는다 : 실질적 결산내용
        
        회계상 재고, 이익금을 계산할때는
        매입매출이 변동된 단가로 계산하게되면 상당히 어려운 연산들이 필요하다.
        그래서 회계상 계산을 할때 사용할 표준단가를 product에 저장해 두고 사용한다.
*/


SELECT 
FROM tbl_iolist IO
    LEFT JOIN tbl_product P
        ON IO.io_pcode = P.p_code
    LEFT JOIN tbl_dept D
        ON IO.io_dcode = D.d_code
ORDER BY IO.io_date, IO.io_pcode;

CREATE VIEW VIEW_IOLIST
AS
(    
    SELECT
        IO_SEQ AS SEQ,
        IO_DATE AS IODATE, -- DATE 키워드 사용금지!!
        IO_INOUT AS INOUT,
        IO_DCODE AS DCODE,
        D_NAME AS DNAME,
        D_CEO AS DCEO,
        D_TEL AS DTEL,
        IO_PCODE AS PCODE,
        P_NAME AS PNAME,
        IO_QTY AS QTY,
        P_IPRICE AS IPRICE,
        P_OPRICE AS OPRICE,
        IO_PRICE AS PRICE,
        IO_AMT AS AMT
    FROM tbl_iolist IO
        LEFT JOIN tbl_product P
            ON IO.io_pcode = P.p_code
        LEFT JOIN tbl_dept D
            ON IO.io_dcode = D.d_code
);

SELECT * FROM view_iolist;

-- 매입과 매출 구분해서
SELECT DECODE(INOUT,1, '매입', 2, '매출'),
    DCODE, DNAME,DCEO,
    PCODE,PNAME,
    QTY,PRICE, AMT
FROM view_iolist;

-- 거래처별로 매입, 매출의 합계
-- 보고자하는 view
-- 거래처별로 흩어져 있는 거래내역을 모아서
-- 매입합계, 매출합계로 보고싶다.
-- 1. DECODE를 사용해서 INOUT 칼럼을 기준으로 매입, 매출구분을 실행
-- 2. 매입과 매출 구분된 항목을 SUM()으로 묶어주기
-- 3. SUM() 묶이지 않는 DECODE, DNAME칼럼을 GROUP BY 절에서 나열
SELECT DCODE, DNAME,
        SUM(DECODE(INOUT,1,AMT,0)) AS 매입합계,
        SUM(DECODE(INOUT,2,AMT,0)) AS 매출합계
FROM view_iolist
GROUP BY DCODE, DNAME
ORDER BY DCODE;
    
-- 월별로 매입매출 합계
-- 1. 거래일자 칼럼에서 년월만 추출
-- 2. DECODE를 사용해서 INOUT에 따라서 매입매출 구분
-- 3. SUM()으로 묶기
-- 4. 월별 추출 계산식을 GROUP BY에 지정
-- 5. 3자리마다, 찍어 보이기
--      999,999 : 출력포맷 형식, 실제 표시되는 값보다 충분히 큰 자릿수 지정
-- TO_CHAR() SQLD에서 일반적으로 화면보기용으로는 사용을 하되
-- 다른 언어와 연동되는 부분에서는 가급적 사용을 자제
-- 숫자를 문자열화 하여 계산할때 어려움이 있을수 있음
SELECT SUBSTR(IODATE,0,7) AS 월,
    TO_CHAR(SUM(DECODE(INOUT,1,AMT)),'999,999,999,999') AS 매입합계,
    TO_CHAR(SUM(DECODE(INOUT,2,AMT)),'999,999,999,999') AS 매출합계
FROM view_iolist
GROUP BY SUBSTR(IODATE,0,7)
ORDER BY SUBSTR(IODATE,0,7);

-- 전체리스트를 모두 Pivot
SELECT SEQ, IODATE, DNAME, PNAME,
    DECODE(INOUT,1,AMT,0) AS 매입,
    DECODE(INOUT,2,AMT,0) AS 매출
FROM view_iolist;

-- 2018년 1년동안 총 매입합계, 총 매출합계
-- 저장된 실제 데이터의 길이가 모두 같은 경우
-- BETWEEN 키워드를 사용하여 범위 검색 가능
SELECT
    SUM(DECODE(INOUT,1,AMT,0)) AS 총매입합계,
    SUM(DECODE(INOUT,2,AMT,0)) AS 총매출합계
FROM view_iolist
WHERE IODATE BETWEEN '2018-01-01' AND '2018-12-31';

-- LIKE를 사용해서 결과를 추출할수 있으나
-- 권장하는 코드는 아님
SELECT
    SUM(DECODE(INOUT,1,AMT,0)) AS 총매입합계,
    SUM(DECODE(INOUT,2,AMT,0)) AS 총매출합계
FROM view_iolist
WHERE IODATE LIKE '2018%';

-- 상품정보에 저장된 매입매출 단가와
-- iolist에 저장된 매입매출 단가의 차이를 한번 보자
SELECT IPRICE, OPRICE,
    DECODE(INOUT,1,PRICE,0) 매입,
    DECODE(INOUT,2,PRICE,0) 매출
FROM view_iolist;

-- 상품정보와 매입매출 테이블의
-- 입출단가의 차액을 계산해보는 SQL
SELECT
       PCODE, PNAME,
       IPRICE,
       DECODE(INOUT,1,PRICE,0) 매입,
       
       DECODE(INOUT,1,IPRICE,0)
       - DECODE(INOUT,1,PRICE,0) AS 매입차액,
       
       OPRICE,
       DECODE(INOUT,2,PRICE,0) 매출,
       
       DECODE(INOUT,2,OPRICE,0)
       - DECODE(INOUT,2,PRICE,0) AS 매출차액
       
FROM view_iolist;

-- SEQ 자동생성 코드











