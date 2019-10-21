-- 여기는 USER4 화면입니다.

/*
테이블 생성
이름 : tbl_books
칼럼
    코드 : b_code, VARCHAR(4)
    이름 : b_name, VARCHAR(50)
    출판사 : b_comp, VARCHAR(50)
    저자 : b_writer, VARCHAR(20)
    가격 : b_price, INT
*/

DROP TABLE tbl_books;

-- TABLE 생성에서 기본키를 항상 고민하자
/*
요구사항1
도서정보를 추가하는데
ISBN과 별도로 자체적으로 
일련번호를 부여하여 관리를 하겠다

일련번호 이기 때문에 일단 칼럼을 NUMBER로 설정을 해서
1 ~ 입력순서대로 번호를 부여하겠다.

요구사항2
기존에 입력된 번호와 다른 새로운 번호를 사용해서 데이터를 입력한다.

요구사항3
데이터를 입력할때 일련번호를 기억하기 싫다.
항상 새로운 번호로 일련번호를 생성하여 데이터를 추가할수 있도록 해 달라

요구사항4
입력된 데이터 중에서 b_price는 숫자 값인데
값이 없이 추가가 되면(null)형테가 된다.
이럴경우 프로그래밍 언어에서 데이터를 가져다 사용할때
문제를 일으킬수 있다.
그래서,
가격 칼럼에 값이 없이 데이터가 추가되면 자동으로 0을 채우도록 하자
*/
CREATE TABLE tbl_books (

    b_code NUMBER PRIMARY KEY,
    b_name nVARCHAR2(50) NOT NULL,
    b_comp nVARCHAR2(50),
    b_writer nVARCHAR2(50),
    b_price NUMBER DEFAULT 0 -- INSERT 수행할때 값이 없으면 0으로 세팅
    
);

INSERT INTO tbl_books(b_code, b_name, b_comp, b_writer)
VALUES(1,'자바입문','이지퍼블','박은종');
SELECT * FROM tbl_books;

/*
테이블의 칼럼 순서가 정확하다는 보장이 있고
모든 칼럼에 데이터가 있다 라는 보장이 있을때는
INSERT 명령문에 Projection(칼럼을 리스트) 하지 않아도
데이터만 정확히 나열하여 명령을 수행할수 있다.

하지만 가급적 사용을 자제하자
*/
INSERT INTO tbl_books
VALUES(2,'오라클','생능','서진수',35000);

/*
데이터를 추가할때마다 b_code 칼럼의 값을 
새로 생성하고 싶다. 
    1. Random()을 사용하는 방법
      -- 숫자가 일련번호가 아닌 뒤죽박죽된 순서로 나타나고
      -- 컴퓨터의 RANDOM값은 완전한 RANDOM 아니기 때문에
        간혹 중복값이 나타날수 있다.
      -- 일련번호를 값으로 PK로 설정할경우
        일반적인 경우 일련번호는 데이터가 추가된 순서가 된다.
        하지만 RANDOM을 사용하면 그러한 조건을 만들수 없다.
        
    2. 일련번호를 순서대로 자동으로 생성하도록 칼럼을 설정하기
      -- 오라클 11 이하에서는 불가능
      -- mysql, mssql 등등 에서는 AUTO INCREAMENT라는 옵션을 칼럼에 부여하면 된다.
      -- 오라클 12 이상에서는 가능
*/

INSERT INTO tbl_books(b_code, b_name)
VALUES( ROUND(DBMS_RANDOM.VALUE(1000000000,9999999999),0),'연습도서');

SELECT * FROM tbl_books;

/*
SEQUENCE 객체(Object)를 사용하여 만드는 방법
다른 DBMS의 AUTO INCREAMENT 기능을 대체하여 사용하는 방법
*/

-- 1부터(START WITH), 1씩증가(INCREMENT BY 1) 하는 형태로
-- 숫자 값을 생성하는 시퀀스 객체 생성
CREATE SEQUENCE SEQ_BOOKS
START WITH 1 INCREMENT BY 1;

SELECT SEQ_BOOKS.NEXTVAL FROM DUAL;

-- 오라클에서 가장 많이 사용하는
-- 일련번호 부여방법
INSERT INTO tbl_books(b_code, b_name)
VALUES(SEQ_BOOKS.NEXTVAL,'시퀀스연습');
SELECT * FROM tbl_books;

-- 기존에 생성된 테이블에 SEQ를 적용하기
/*
매입매출에서
tbl_iolist에 데이터를 추가하면서
엑셀로 데이터를 정리하고
SEQ 칼럼을 만든다음 일련번호를 추가해 두었다.
이제 새로만든 App에서 데이터를 추가할때 SEQUENCE를 사용하고자 한다.

1. 기존데이터의 SEQ 칼럼의 최대값이 얼마냐 확인 : 589
2. 새로운 시퀀스를 생성할때 START WITH : 600 로 설정
*/
CREATE SEQUENCE SEQ_IOLIST
START WITH 1 INCREMENT BY 1;

/*
만약 실수로 SEQ 시작값을 잘못 설정했을 경우
*/
-- 시작값 변경이 안되는 경우
ALTER SEQUENCE SEQ_IOLIST STARTH WITH 600; 
-- 증가값을 최대값보다 큰값으로 일단 설정
ALTER SEQUENCE SEQ_IOLIST INCREMENT BY 600; 
-- NEXTVAL을 호출하여 현재 값을 변경해 주고
SELECT SEQ_IOLIST.NEXTVAL FROM DUAL; 
-- 다시 증가값을 1로 설정
ALTER SEQUENCE SEQ_IOLIST INCREMENT BY 1;

-- 쉬운방법은
DROP SEQUENCE SEQ_IOLIST;
CREATE SEQUENCE SEQ_IOLIST
START WITH 1000 INCREMENT BY 1;

SELECT SEQ_IOLIST.NEXTVAL FROM DUAL;

-- 현재 SEQ_IOLIST 값
-- 간혹 현재 SEQ_IOLIST의 실제값이 아닌값을 알려주는 경우가 있다.
SELECT SEQ_IOlIST.CURRVAL FROM DUAL;

/*
TABLE에 특정할 수 있는 PK가 있는 경우는
해당하는 값을 INSERT를 수행하면서 입력하는 것이 좋고

그렇지 못한경우는 SEQUENCE를 사용하여 일련번호 형식으로 지정하자
*/

/*
도서 코드를
B0001 형식으로 일련번호를 만들고 싶다.
이 방식은 ORACLE이외의 다른 DBMS에서는 상당히 복잡하다.
*/

DROP TABLE tbl_books;
CREATE TABLE tbl_books (

    b_code VARCHAR2(5) PRIMARY KEY,
    b_name nVARCHAR2(50) NOT NULL,
    b_comp nVARCHAR2(50),
    b_writer nVARCHAR2(50),
    b_price NUMBER DEFAULT 0 -- INSERT 수행할때 값이 없으면 0으로 세팅
    
);

SELECT 'B' || TRIN(TO_CHAR(SEQ_BOOKS.NEXTVAL,'0000')) FROM DUAL;

-- b_code : B0001 ~ 생성하기
-- TO_CHAR(값,포멧형)
-- TO_CHAR(숫자, '0000') : 자릿수를 4개로 설정하고, 공백부분은 0으로 채워라
-- TO_CHAR(숫자,'9999') : 자릿수를 4개로 설정하고, 남은 부분은 공백으로 둬라
-- TRIM() 문자열의 앞과 뒤의 공백제거, 중간공백은 제거 불가
-- LTRIN(), RTRIM()
INSERT INTO tbl_books(b_code, b_name)
VALUES( 'B' || TRIM(TO_CHAR(SEQ_BOOKS.NEXTVAL,'0000')) , 'SEQ연습');

-- 오라클의 고정길이 문자열 생성
/*
원래값이 숫자형일경우
TO_CHAR(값,포멧형)

원래값이 다양한 형일 경우
LPAD(값,총길이,채움문자)
*/

-- LPAD
-- 총길이를 10개로 하고
-- 공백(남는부분)은 *로 표시하여 문자열 생성
SELECT LPAD(30,10,'*') FROM DUAL;

- RPAD
SELECT RPAD(30,10,'A') FROM DUAL;
SELECT 'B' || LPAD(SEQ_BOOKS.NEXTVAL,4,'0') FROM DUAL;

SELECT RPAD('우리',20,' ') FROM DUAL
UNION ALL SELECT RPAD('대한민국',20,' ') FROM DUAL
UNION ALL SELECT RPAD('미연방합중국',20,' ') FROM DUAL
UNION ALL SELECT RPAD('중화인민공화국',20,' ') FROM DUAL;

SELECT LPAD('우리',20,' ') FROM DUAL
UNION ALL SELECT LPAD('대한민국',20,' ') FROM DUAL
UNION ALL SELECT LPAD('미연방합중국',20,' ') FROM DUAL
UNION ALL SELECT LPAD('중화인민공화국',20,' ') FROM DUAL;


SELECT * FROM tbl_books;
INSERT INTO tbl_books(b_code, b_name)
VALUES('B' || TRIM(TO_CHAR(SEQ_BOOKS.NEXTVAL,'0000')), 'SEQ연습');
SELECT * FROM tbl_books;

INSERT INTO tbl_books(b_code, b_name)
VALUES('B' || LPAD(SEQ_BOOKS.NEXTVAL,4,0), 'SEQ연습2');

SELECT * FROM tbl_books;
