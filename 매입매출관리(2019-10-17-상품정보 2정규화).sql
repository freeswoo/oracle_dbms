-- 매입매출관리
-- 상품정보 제2정규화 작업

-- 매입매출정보에 상품정보가 어떻게 저장되어 있는지 확인
SELECT io_pname
FROM tbl_iolist
GROUP BY io_pname
ORDER BY io_pname;

-- 상품 테이블 생성
CREATE TABLE tbl_product (
    p_code	VARCHAR2(6)	NOT NULL	PRIMARY KEY,
    p_name	nVARCHAR2(50)	NOT NULL,	
    p_iprice	NUMBER,		
    p_oprice	NUMBER
);

SELECT * FROM tbl_product;

-- 검증을 하기 위해 tbl_iolist와 tbl_product를 EQ JOIN해서 조회
SELECT io_inout, COUNT(*)
FROM tbl_iolist IO, tbl_product P
WHERE io.io_pname = p.p_name
GROUP BY io_inout;

-- 상품정보 테이블의 단가를 어떻게 세팅을 할 것인가 고민

-- 상품들의 매입단가를 확인
SELECT io_inout, IO.io_pname, IO.io_price, COUNT(*)
FROM tbl_iolist IO, tbl_product P
WHERE IO.io_pname = P.p_name
    AND IO.io_inout = 1
GROUP BY io_inout, io_pname, io_price;

-- 매입매출 테이블에서 매입단가를 조회해 봤더니
-- 다행히 상품이름이 같은데 단가가 다른 상품이 없는 것같다.
-- 매입매출 테이블에서 매입단가를 상품정보테이블의 매입단가 칼럼에
-- 세팅을 하려고 한다.

UPDATE tbl_product P
SET p_iprice
= ( SELECT MAX(IO.io_price)
        FROM tbl_iolist IO
    WHERE io_inout = 1 AND P.p_name = IO.io_pname
);

UPDATE tbl_product P
SET p_oprice
= ( SELECT MAX(IO.io_price)
        FROM tbl_iolist IO
    WHERE io_inout = 2 AND P.p_name = IO.io_pname
);

SELECT * FROM tbl_product;

-- 상품거래정보에 상품정보 매입, 매출단가를 생성을 했더니
-- NULL인 값이 있다.
-- 어떤상품은 매입만, 어떤상품은 매출만 된 경우

/*
    매입단가에서 매출단가 생성하기
    공산품일경우 매입단가의 약 18% 를 더해서 매출단가를 계산
    그리고 여기에 10%의 VAT 붙여서 다시
    매출단가 = (매입단가 + (매입단가 * 0.18)) * 1.1
    
    매출단가에서 매입단가 생성하기
    매출단가에서 부가세를 제외하고
    그 금액에서 18%를 빼서 매입단가를 계산
    
    매입단가 = (매출단가 / 1.1) - ((매출단가 / 1.1) * 0.18)
    매입단가 = (매출단가 / 1.1) * 0.82
    
*/

UPDATE tbl_product
SET p_iprice =
    ROUND((p_oprice / 1.1) * 0.82,0)
WHERE p_iprice IS NULL;

-- (p_oprice + (p_oprice * 0.18)) * 1.1

UPDATE tbl_product
SET p_oprice =
    ROUND((p_iprice + (p_iprice * 0.18)) * 1.1,0)
WHERE p_oprice IS NULL;

SELECT * FROM tbl_product ;

UPDATE tbl_product
SET p_iprice = ROUND(p_iprice,0),
    p_oprice = ROUND(p_oprice,0) ;

-- 상품테이블 매출단가의 원단위 자르기
-- 매입매출 테이블과 연결하기