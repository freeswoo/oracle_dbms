-- iolist2
-- 데이터 임포트 수행후 정확히데이터가 있는지 확인
select * from tbl_iolist;
select count(*) from tbl_iolist;

-- 구분칼럼을 그룹으로 묶어서
-- 그룹내의 개수가 몇개씩인지 확인
select io_inout, count(*) from tbl_iolist
group by io_inout;

-- 현재데이터는 제1정규화가 완료된 데이터이고
-- 이 데이터를 제2정규화 작업 수행
-- 제2정규화
-- 1개의 테이블에 정리된 데이터를
-- 다른 테이블로 데이터를 분리하여
-- update 등을 수행할때 데이터의 무결성을 보장하기 위한 조치
-- 현재 데이터에서 상품의 이름을 변경하고자 한다
update tbl_iolist
set io_pname= ''
where io_pname = '';
-- 이 update 명령문은 다수의 레코드를 변경하는 코드가 된다.
-- 이 코드가 실행되면서 실제로 변경하지 말아야할 데이터들이 변경될수도 있고
-- 변경해야할 데이터들이 변경되지 않는 경우도 발생할수 있다
-- 상품정보를 별도의 테이블로 분리하고
-- 현재 테이블에는 상품정보테이블과 연결하는 칼럼만 두어서
-- 상품정보를 최소한으로 변경을 해도
-- 


select io_pname,
    avg(decode(io_inout,'매입',io_price)) as 매입단가,
    avg(decode(io_inout,'매출',io_price)) as 매출단가
from tbl_iolist
where io_inout = '매입'
group by io_pname
order by io_pname;

select io_pname from tbl_iolist
group by io_pname;

create table tbl_product(
p_code	VARCHAR2(5)		PRIMARY KEY,
p_name	nVARCHAR2(50)	NOT NULL,	
p_iprice	NUMBER,		
p_oprice	NUMBER,		
p_vat	VARCHAR2(1)		
);

select count(*) from tbl_product;

--
--
select count(*)
from tbl_iolist, tbl_product
where io_pname = p_name;

select count(*) from tbl_iolist;

-- 매입매출데이터에서 상품코드 칼럼을 추가
alter table tbl_iolist add io_pcode VARCHAR2(5);

-- 상품테이블에서 상품코드를 가져와서
-- 매입매출데이터의 상품코드 칼럼에 update를 실행

-- 매입매출 테이블 전체를 펼처두고
-- 각 레코드에서 상품이름을 추출하여
-- 상품테이블의 select문으로 주입하고
-- 상품테이블에서 해당 상품이름으로 where조건을 실행하여
-- 나타나는 상품 코드를
-- 매입매출 테이블의 상품코드 칼럼에 업데이트 실행하라
update tbl_iolist
set io_pcode = 
(
    select p_code from tbl_product
    where io_pname = p_name
);

-- 상품코드가 정확히 업데이트 되었는지 확인
select count(*)
from tbl_iolist, tbl_product
where io_pcode = p_code;

-- 매입매출테이블에서 상품이름 칼럼을 제거
alter table tbl_iolist drop column io_pname;

select *
from tbl_iolist, tbl_product
where io_pcode = p_code;

select io_dname, count(*)
from tbl_iolist
group by io_dname;

-- 거래처정보는 같은이름의 거래처가 있을수 있기 때문에
-- 거래처정보 테이블을 생성할때는
-- 거래처명과 대표이름을 함께 묶어서 정보를 추출해야한다.
select io_dname,io_dceo,count(*)
from tbl_iolist
group by io_dname, io_dceo;

select io_dname,io_dceo
from tbl_iolist
group by io_dname, io_dceo;

-- 거래처 정보 테이블 생성
create table tbl_dept(
    d_code	VARCHAR2(5)		PRIMARY KEY,
    d_name	nVARCHAR2(50)	NOT NULL,	
    d_ceo	nVARCHAR2(50)	NOT NULL,	
    d_tel	VARCHAR2(20),		
    d_addr	nVARCHAR2(125)		
);

select count(*) from tbl_dept;

-- 매입매출 테이블 거래처코드 칼럼 추가
alter table tbl_iolist
add io_dcode varchar2(5);

desc tbl_iolist;

-- 거래처정보 테이블과 매입매출정보 테이블 eq join을 실행해서
-- 거래처 정보가 정확히 생성되었는지 확인
select COUNT(*)
from tbl_iolist, tbl_dept
where io_dname = d_name and io_dceo = d_ceo;

-- 매입매출테이블에 거래처 코드 update
update tbl_iolist
set io_dcode =
(
    -- update의 subquery 에서는 반드시 1개의 레코드만 추출되도록
    -- where 조건이 성립되어야 한다
    select d_code
    from tbl_dept
    where io_dname = d_name and io_dceo = d_ceo
);

-- join을 실행할때 join 되는 테이블들에 같은 이름의 칼럼이 있으면
-- 문법오류가 발생할수 있다.
-- 이럴때는 table에 alias를 설정하고
-- 칼럼을 alias.column 형식으로 지정해 주어야 한다.
select COUNT(*)
from tbl_iolist IO, tbl_dept D
where IO.io_dcode = D.d_code;

-- 매입매출에서 거래처명, 대표칼럼 삭제
alter table tbl_iolist drop column io_dname;
alter table tbl_iolist drop column io_dceo;

select * from tbl_iolist;

select 
from tbl_iolist IO
    left join tbl_product P
        on IO.io_pcode = P.p_code
    left join tbl_dept D
        on IO.io_decode = D.d_code;
        
drop view view_iolist;

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

select * from view_iolist;

select *
from view_iolist












