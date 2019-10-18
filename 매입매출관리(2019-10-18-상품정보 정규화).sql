-- IOLIST 사용자 화면
SELECT * FROM tbl_product;

-- 상품정보 테이블에서 판매가격의 원단위 제거하고 0으로 세팅
-- 판매가격 = ROUND(판매가격 / 10,0) * 10

-- ※ 1개이상의(전체) 데이터를 대상으로 UPDATE, DELETE를 수행할때는
--      항상 신중하게 코드를 검토해서 실행하자
UPDATE tbl_product
SET p_oprice = ROUND(p_oprice / 10,0) * 10 ;

SELECT * FROM tbl_product;

-- 매입매출장과 상품정보를 테이블 JOIN 하기 위해
-- 1. 매입매출장에 상품코드 칼럼을 추가하고
-- 2. 상품이름과 연결된 상품코드로 업데이트하고
-- 3. 상품이름 칼럼 제거

-- 1. 매입매출장에 상품코드 칼럼 추가
ALTER TABLE tbl_iolist ADD io_pcode VARCHAR2(6) ;

-- 2. 매입매출장의 상품코드 칼럼을 업데이트
-- 서브쿼리를 사용해서
-- UPDATE 실행에서 유의사항
--  UPDATE를 수행하는 SUBQ의 SELECT Projection에는
--  칼럼을 1개만 사용해야 한다.
-- SUBQ에서 나타나는 레코드 수도 반드시 1개만 나타나야 한다.

-- 매입매출테이블 리스트를 나열하고
-- 각 요소의 상품이름을 SUBQ로 전달
-- SUBQ에서는 상품테이블로 부터 상품이름을 조회하여
-- 일치하는 레코드가 1개 나타나면
-- 해당레코드의 상품코드 칼럼의 값을
-- 매입매출칼럼의 상품코드 칼럼에 업데이트 하라
UPDATE tbl_iolist IO
SET io_pcode =
(
    SELECT p_code
    FROM tbl_product P
        WHERE IO.io_pname = P.p_name
);

-- 업데이트후에 검증
-- iolist와 product를 EQ JOIN을 수행해서
-- 누락된 데이터가 없는지 확인
-- ※ 테이블 JOIN을 수행하면서 TABLE alias를 설정하지 않고
--      JOIN 조건등을 사용했다
--      JOIN되는 table들에 JOIN조건으로
--      사용되는 칼럼의 이름이 같지 않은 경우에 가능한 코드
SELECT COUNT(*)
FROM tbl_iolist, tbl_product
    WHERE io_pcode = p_code ;
    
-- 매입매출테이블에서 상품이름 칼럼 제거
ALTER TABLE tbl_iolist DROP COLUMN io_pname;

/*

 오라클에서 INSERT, UPDATE, DELETE를 수행한 직후에는
 아직 데이터가 COMMIT 되지 않아서
 실제 물리적 테이블이 저장이 되지 않은 상태이다
 이때는 ROLLBACK을 수행해서 CUD를 취소할수 있다.
 
 단,
 DDL 명령(CREATE, ALTER, DROP)을 수행하면
 자동 COMMIT이 된다.

 대량의 INSERT, UPDATE, DELETE를 수행한 후
 데이터 검증이 완료되면 가급적 COMMIT을 수행하고
 다음으로 진행하자
 
 오라클에서는
 COMMIT과 ROLLBACK도 시점을 지정해서
 어디까지 ROLLBACK을 할것인지 지정할수도 있다
 
*/

-- pcode끼리 JOIN 수행해서 검증
SELECT COUNT(*)
FROM tbl_iolist, tbl_product
WHERE io_pcode = p_code;

