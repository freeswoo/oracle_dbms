select D_CODE,
        D_NAME,
        D_CEO,
        D_TEL,
        D_ADDR
from tbl_dept;

select p_code, p_name, p_iprice, p_oprice, p_vat
from tbl_product;

select IO_SEQ,IO_DATE,IO_INOUT,IO_QTY,IO_PRICE,IO_TOTAL,IO_PCODE,IO_DCODE
from tbl_iolist;

/*
tbl_iolist - tbl_product
io_pcode     p_code

tbl_iolist - tbl_dept
io_dcode     d_code

제2정규화가 완료된 후
테이블들을 참조무결성을 보장하기 위해
FK 설정을 수행해야 한다.
*/
alter table tbl_iolist -- 연동되는 table
add CONSTRAINT FK_PRODUCT
FOREIGN key(io_pcode) -- 연동되는 칼럼
REFERENCES tbl_product(p_code); -- PK 키로 설정된 부분

alter table tbl_iolist -- 연동되는 table
add CONSTRAINT FK_DEPT
FOREIGN key(io_dcode) -- 연동되는 칼럼
REFERENCES tbl_dept(d_code); -- PK 키로 설정된 부분

/*
오라클의 level 기능

&변수
오라클의 대치연산자
사용자(SQL 실행하는)로 부터 어떤 값을 입력받아서
SQL을 수행하기 위한 방법

1부터 <= 변수까지 연속된 값을 레코드로 추출해주는 오라클 SQL
*/

select level from dual connect by level <= 10;
select level from dual connect by level <= &변수;
select level from dual connect by level <= &last;

-- 10부터 100까지
select level * 10 from dual connect by level <= 10;
select level * &시작 from dual connect by level <= &종료;

-- 역순표시
select (level -10) * -1 from dual connect by level < 10;

select IO_SEQ,IO_DATE,IO_INOUT,IO_QTY,IO_PRICE,IO_TOTAL,IO_PCODE,IO_DCODE
from tbl_iolist
where io_date between '&시작일자' and '&종료일자';

-- 문자열을 날짜type으로 변환시키기
-- 날짜값을 문자열 형태로 저장을 하는데
-- 날짜값으로 어떤 연산을 수행하고자 할때는
-- 문자열을 날짜type으로 변환을 시킬 필요가 있다.

/*
2019-01-01부터 2019-01-31까지의 날짜 값을 추출하는 연산
to_date('2019-01-31','YYYY-MM-DD');
    - to DATE('2019-01-01','YYYY-MM-DD');
*/

select to_DATE('2019-02-01','YYYY-MM-DD') -1 + level from dual
connect by level <=
    to_date('2019-09-30','YYYY-MM-DD')
    - (to_DATE('2019-02-01','YYYY-MM-DD') + 1);

-- 2019-02-01일 부터 2019-09-30까지 년, 월만 추출해서
-- 문자열로 생성하기
select to_char(add_months(to_DATE('2019-02-01','YYYY-MM-DD'), level -1),'YYYY-MM') from dual
connect by level <=
    to_date('2019-09-30','YYYY-MM-DD')
    - (to_DATE('2019-02-01','YYYY-MM-DD') + 1);

-- 기간을 지정하여 년-월 형태의 문자열을 생성하는 코드
-- add_months : 날짜값에 월을 + 해서 숫자형 날자값으로 변환
-- 오라클에서 날짜와 관련된 연산을 수행할때는
-- 문자열형태로는 불가능하므로
-- to_date()함수를 사용하여 날짜 type으로 변환시키고
-- 연산을 수행해야 한다.
select to_char(add_months(to_date('2019-01-01','YYYY-MM-DD'),level-1),'YYYY-MM')
from dual
connect by level <= 5;

-- 컴퓨터의 현재 날짜
select sysdate from dual;

-- 현재 날짜가 포함된 달의 마지막 날짜
select last_day(sysdate) from dual;

-- 현재 날짜가 포함된 달의 첫번째 날짜부터 말일까지 리스트 나타내기
select to_char(trunc(sysdate,'month') + (level - 1), 'YYYY-MM-DD')
from dual
connect by level <= (last_day(sysdate)) - trunc(sysdate,'month') + 1;

-- 2018년 1월 1일부터 12달의 달수만 가져오기

select * from
tbl_iolist IO,
(
    select to_char(add_months(to_date('2018-01-01','YYYY-MM-DD'),level-1),'YYYY-MM') as 월
    from dual
    connect by level <= 12
);

select to_char(add_months(to_date(io_date,'YYYY-MM-DD'),0),'YYYY-MM') from tbl_iolist;

-- 일반적인 SQL
-- 월별로 합계계산
select substr(io_date,0.7) as IO_월, sum(io_total)
from tbl_iolist IO
group by substr(io_date,0.7);

-- 월리스트를 서브쿼리로 생성한 다음
-- 월리스트를 가지고 EQ JOIN을 수행해서 월별합계
select 월, sum(io_total)
from tbl_iolist IO,
(
    select to_char(add_months(to_date('2018-01-01','YYYY-MM-DD'),level-1),'YYYY-MM') as 월
    from dual
    connect by level <= 12
)
where 월 = substr(io_date,0,7)
group by 월;

-- 12250
-- 1500000
select min(io_total),max(io_total) from tbl_iolist;

-- subQ 10000 ~ 1500000 까지 10000씩 증가하는 값을 생성
-- 각각의 값 범위
-- (예) 10000 ~ < 20000까지의 합계와 개수를 연산
select sub.total, sum(io_total), count(io_total)
from tbl_iolist,
(select level * 10000 as total from dual connect by level <= 150) sub
where io_total >= sub.total and io_total < sub.total + 10000 
and io_inout = '매출'
group by total
order by total;

-- subq와 eq join으로
-- 학생수가 있는 점수대만 보여주기
select 점수, count(SC.sc_score)
from tbl_score SC, 
(select level * 10 as 점수 from dual connect by level <= 10) sub
where SC.sc_score >= 점수 and SC.sc_score <= 점수 + 10
group by 점수
order by 점수;

-- subQ와 left join을 같이 묶어서
-- 학생수가 없는 점수대의 점수 제목도 같이 보여주기
select 점수, count(SC.sc_score)
from (select level * 10 as 점수 from dual connect by level <= 10) sub
    left join  tbl_score SC
        on SC.sc_score >= 점수 and SC.sc_score <= 점수 + 10
group by 점수
order by 점수;

-- 오라클에서 숫자를 연속된 값의 리스트로 만들때
select level * 0.1 from dual connect by level <= 10;

select sc_subject from tbl_score
group by sc_subject
order by sc_subject;

-- sc_subject 칼럼에 들어있는 과목명의 리스트
-- 제1정규화가 되어있는 데이터를 보고서 형태로 보여주는 SQL
select *
from(select sc_name, sc_subject, sc_score from tbl_score)
pivot (
    sum(sc_score)
    for sc_subject
    in (
         '과학' as 과학,
         '국어' 국어,
         '국사' 국사,
         '미술' 미술,
         '수학' 수학,
         '영어' 영어
        )
);

select sc_name,
    sum(decode(sc_subject,'과학',sc_score)) as 과학,
    sum(decode(sc_subject,'국어',sc_score)) as 국어,
    sum(decode(sc_subject,'국사',sc_score)) as 국사,
    sum(decode(sc_subject,'미술',sc_score)) as 미술,
    sum(decode(sc_subject,'수학',sc_score)) as 수학,
    sum(decode(sc_subject,'영어',sc_score)) as 영어
from tbl_score
group by sc_name;

-- 학생 한사람을 기준으로 과목을 나열하여 보여주기 위해서
-- 학생이름으로 group by를 수행해야 하고
-- 나머지 항목에서 group by를 수행하여야 SQL 문이 정상으로 작동되는데
-- 학생이름을 제외한 나머지 항목을 sum() 묶어주면
-- group by 절에 나열하지 않아도 된다.
select sc_name,
    decode(sc_subject,'과학',sc_score,0) as 과학,
    decode(sc_subject,'국어',sc_score,0) as 국어,
    decode(sc_subject,'국사',sc_score,0) as 국사,
    decode(sc_subject,'미술',sc_score,0) as 미술,
    decode(sc_subject,'수학',sc_score,0) as 수학,
    decode(sc_subject,'영어',sc_score,0) as 영어
from tbl_score
group by sc_name;

select sc_name,
    decode(sc_subject,'과학',sc_score,0),
    decode(sc_subject,'국어',sc_score,0),
    decode(sc_subject,'국사',sc_score,0),
    decode(sc_subject,'미술',sc_score,0),
    decode(sc_subject,'수학',sc_score,0),
    decode(sc_subject,'영어',sc_score,0)
order by sc_name;

-- case when 표준 SQL에 포함된 연산자
select sc_name,
    sum(case when sc_subject = '과학' then sc_score end) as 과학,
    sum(case when sc_subject = '국사' then sc_score end) as 국사,
    sum(case when sc_subject = '국어' then sc_score end) as 국어,
    sum(case when sc_subject = '미술' then sc_score end) as 미술,
    sum(case when sc_subject = '수학' then sc_score end) as 수학,
    sum(case when sc_subject = '영어' then sc_score end) as 영어
from tbl_score
group by sc_name;

select sc_name,
    sum(case when sc_subject = '과학' then sc_score else 0 end) as 과학,
    sum(case when sc_subject = '국사' then sc_score else 0 end) as 국사,
    sum(case when sc_subject = '국어' then sc_score else 0 end) as 국어,
    sum(case when sc_subject = '미술' then sc_score else 0 end) as 미술,
    sum(case when sc_subject = '수학' then sc_score else 0 end) as 수학,
    sum(case when sc_subject = '영어' then sc_score else 0 end) as 영어
from tbl_score
group by sc_name;

select io_inout,
    sum(decode(io_inout, '매입',io_total,0)) as 매입,
    sum(decode(io_inout, '매출',io_total,0)) as 매출
from tbl_iolist
group by io_inout;

select 
    sum(decode(io_inout, '매입',io_total,0)) as 매입,
    sum(decode(io_inout, '매출',io_total,0)) as 매출
from tbl_iolist;

select 
    sum(decode(io_inout, '매입',io_total,0)) as 매입,
    sum(decode(io_inout, '매출',io_total,0)) as 매출,
    
    sum(decode(io_inout, '매출',io_total,0)) -
    sum(decode(io_inout, '매입',io_total,0)) as 마진
    
from tbl_iolist;

select 
    to_char(sum(decode(io_inout, '매입',io_total,0)), '999,999,999,999') as 매입,
    to_char(sum(decode(io_inout, '매출',io_total,0)), '999,999,999,999') as 매출,
    
    to_char(sum(decode(io_inout, '매출',io_total,0)) -
    sum(decode(io_inout, '매입',io_total,0)), '999,999,999,999') as 마진
    
from tbl_iolist;

-- 월별집계
select
    substr(io_date,0,7),
    sum(decode(io_inout, '매입',io_total,0)) as 매입,
    sum(decode(io_inout, '매출',io_total,0)) as 매출
from tbl_iolist
group by substr(io_date,0,7)
order by substr(io_date,0,7);

-- 거래처별로 매입매출 집계
-- 거래처테이블과 join
select
    IO.io_dcode, D.d_name, D.d_ceo, D.d_tel,
    sum(decode(io_inout, '매입',io_total,0)) as 매입,
    sum(decode(io_inout, '매출',io_total,0)) as 매출
from tbl_iolist IO
    left join tbl_dept D
        on IO.io_dcode = D.d_code
group by io_dcode, d_name, d_ceo, d_tel
order by io_dcode;

-- select의 projection 분분에서
-- 계산식을 사용할 경우
-- group by에는 계산식을 모두 기술해 주어야 한다.
-- alias부분은 group by에서 인식하지 않는다.
-- having도 계산식을 모두 기술해주어야 한다.
select
    IO.io_dcode,
    D.d_name || D.d_ceo || D.d_tel as 거래처,
    sum(decode(io_inout, '매입',io_total,0)) as 매입,
    sum(decode(io_inout, '매출',io_total,0)) as 매출
from tbl_iolist IO
    left join tbl_dept D
        on IO.io_dcode = D.d_code
group by io_dcode, d_name || d_ceo || d_tel
-- 매입합계 > 100000 이상인 조건, alias 사용불가
-- having 매입 > 100000 (x)
having sum(decode(io_inout, '매입',io_total,0)) > 100000
order by io_dcode;

select io_date, io_dcode, d_name, io_pcode, p_name,
    decode(io_inout, '매입',io_price) as 매입단가,
    decode(io_inout, '매입',io_total) as 매입합계,
    decode(io_inout, '매출',io_price) as 매출단가,
    decode(io_inout, '매출',io_total) as 매출합계
from tbl_iolist
    left join tbl_product
        on io_pcode = p_code
    left join tbl_dept
        on io_dcode = d_code
order by io_date;