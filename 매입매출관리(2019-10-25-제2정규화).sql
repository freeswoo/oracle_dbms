-- IOLIST2
-- 데이터 임포트 수행후 정확히데이터가 있는 확인
SELECT * FROM tbl_iolist;
SELECT COUNT(*) FROM tbl_iolist;

-- 구분칼럼을 그룹으로 묶어서
-- 그룹내의 개수가 몇개씩인지 확인
SELECT io_inout, COUNT(*) FROM tbl_iolist
GROUP BY io_inout ;

-- 현재데이터는 제1정규화가 완료된 데이터이고
-- 이 데이터를 제2정규화 작업 수행
-- 제2정규화
-- 1개의 테이블에 정리된 데이터를
-- 다른 테이블로 데이터를 분리하여
-- UPDATE 등을 수행할때 데이터의 무결성을 보장하기 위한 조치
-- 현재 데이터에서 상품의 이름을 변경하고 한다
UPDATE tbl_iolist
SET io_pname = ''
WHERE io_pname = '';
-- 이 UPDATE 명령문은 다수의 레코드를 변경하는 코드가 된다.
-- 이 코드가 실행되면서 실제로 변경하지 말아야할 데이터들이 변경될수도 있고
-- 변경해야 할 데이터들이 변경되지 않는 경우도 발생할수 있다.
-- 상품정보를 별도의 테이블로 분리하고
-- 현재 테이블에는 상품정보테이블과 연결하는 칼럼만 두어서
-- 상품정보를 최소한으로 변경을 해도
-- 보이는 데이터가 원하는 방향으로 변경될수 있도록 수행하는 것
-- 상품정보에 대한 리스트 확보
SELECT io_pname,
    AVG(DECODE(io_inout,'매입',io_price)) AS 매입단가, 
    AVG(DECODE(io_inout,'매출',io_price)) AS 매출단가
FROM tbl_iolist
GROUP BY io_pname 
ORDER BY io_pname ;

SELECT io_pname FROM tbl_iolist
GROUP BY io_pname ;

-- 상품 테이블 생성
CREATE TABLE tbl_product (
    p_code	VARCHAR2(5)		PRIMARY KEY,
    p_name	nVARCHAR2(50)	NOT NULL,	
    p_iprice	NUMBER,		
    p_oprice	NUMBER,		
    p_vat	VARCHAR2(1)		
);

SELECT COUNT(*) FROM tbl_product ;

-- 작성한 상품정보 테이블과 매입매출 테이블을 EQ JOIN을 실행하여
-- 데이터 정확히 작성되었는지 확인
SELECT COUNT(*)
FROM tbl_iolist, tbl_product
WHERE io_pname = p_name ;

SELECT COUNT(*) FROM tbl_iolist ;

-- 매입매출데이터에 상품코드 칼럼을 추가
ALTER TABLE tbl_iolist ADD io_pcode VARCHAR2(5);

-- 상품테이블에서 상품코드를 가져와서
-- 매입매출데이터의 상품코드 칼럼에 UPDATE를 실행

-- 매입매출 테이블 전체를 펼쳐두고
-- 각 레코드에서 상품이름을 추출하여
-- 상품테이블의 SELECT문으로 주입하고
-- 상품테이블에서 해당 상품이름으로 WHERE 조건을 실행하여
-- 나타나는 상품코드를
-- 매입매출 테이블의 상품코드 칼럼에 업데이트 실행하라
UPDATE tbl_iolist
SET io_pcode =
(
    SELECT p_code FROM tbl_product
    WHERE io_pname = p_name 
);

-- 상품코드가 정확히 업데이트 되었는지 확인
SELECT COUNT(*)
FROM tbl_iolist, tbl_product
WHERE io_pcode = p_code ;


-- 매입매출테이블에서 상품이름 칼럼을 제거
ALTER TABLE tbl_iolist DROP COLUMN io_pname ;

SELECT *
FROM tbl_iolist, tbl_product
WHERE io_pcode = p_code;

SELECT io_dname, COUNT(*) 
FROM tbl_iolist
GROUP BY io_dname;

-- 거래처정보는 같은이름의 거래처가 있을수 있기 때문에
-- 거래처정보 테이블을 생성할때는
-- 거래처명과 대표이름을 함께 묶어서 정보를 추출해야한다.
SELECT io_dname,io_dceo, COUNT(*) 
FROM tbl_iolist
GROUP BY io_dname, io_dceo;

SELECT io_dname,io_dceo
FROM tbl_iolist
GROUP BY io_dname, io_dceo;

-- ="010" & TEXT(RANDBETWEEN(1000,9999),"0000") 
--  & "-" &  TEXT(RANDBETWEEN(1000,9999),"0000")


-- 거래처정보 테이블 생성
CREATE TABLE tbl_dept (
    d_code	VARCHAR2(5)		PRIMARY KEY,
    d_name	nVARCHAR2(50)	NOT NULL,	
    d_ceo	nVARCHAR2(50)	NOT NULL,	
    d_tel	VARCHAR2(20),		
    d_addr	nVARCHAR2(125)		
);


SELECT COUNT(*) FROM tbl_dept ;

-- 매입매출테이블 거래처코드 칼럼 추가
ALTER TABLE tbl_iolist
ADD io_dcode VARCHAR2(5);

DESC tbl_iolist;

-- 거래처정보 테이블과 매입매출정보 테이블 EQ JOIN을 실행해서
-- 거래처정보가 정확히 생성되었는지 확인
SELECT COUNT(*)
FROM tbl_iolist, tbl_dept
WHERE io_dname = d_name AND io_dceo = d_ceo;

SELECT COUNT(*) FROM tbl_iolist;

-- 매입매출테이블에 거래처 코드 UPDATE
UPDATE tbl_iolist
SET io_dcode =
(
    -- UPDATE의 subquery 에서는 반드시 1개의 레코드만 추출되도록
    -- WHERE 조건이 성립되어야 한다.
    SELECT d_code
    FROM tbl_dept
    WHERE io_dname = d_name AND io_dceo = d_ceo
);

-- JOIN 을 실행할때 JOIN 되는 테이블들에 같은 이름의 칼럼이 있으면
-- 문법오류가 발생할수 있다.
-- 이럴때는 TABLE에 ALIAS를 설정하고
-- 칼럼을 ALIAS.COLUMN 형식으로 지정해 주어야 한다.

SELECT COUNT(*)
FROM tbl_iolist IO, tbl_dept D
WHERE IO.io_dcode = D.d_code ;

DESC tbl_dept ;

-- 매입매출에서 거래처명, 대표칼럼 삭제
ALTER TABLE tbl_iolist DROP COLUMN io_dname;
ALTER TABLE tbl_iolist DROP COLUMN io_dceo;

SELECT * FROM tbl_iolist;

DROP VIEW view_iolist ;
CREATE VIEW view_iolist AS
(
SELECT 
        IO.IO_SEQ,
        IO.IO_DATE,
        IO.IO_INOUT,
        IO.IO_DCODE,

        D.D_NAME AS IO_DNAME,
        D.D_CEO AS IO_DCEO,
        D.D_TEL AS IO_DTEL,
        D.D_ADDR AS IO_DADDR,        
       
        IO.IO_PCODE,

        P.P_NAME AS IO_PNAME,
        P.P_IPRICE AS IO_IPRICE,
        P.P_OPRICE AS IO_OPRICE,
        P.P_VAT AS IO_PVAT,     
        
        IO.IO_QTY,
        IO.IO_PRICE,
        IO.IO_TOTAL

FROM tbl_iolist IO
    LEFT JOIN tbl_product P
        ON IO.io_pcode = P.p_code
    LEFT JOIN tbl_dept D
        ON IO.io_dcode = D.d_code
);

SELECT * FROM view_iolist ;

SELECT *
FROM view_iolist
ORDER BY io_date;












