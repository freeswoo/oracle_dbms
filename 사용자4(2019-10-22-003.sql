select * from tbl_books;

/*
주소록 테이블

임의의ID값을 PK설정 NUMBER
이름 nVARCHAR2(50)
전화번호 VARCHAR2(20)
주소 nVARCHAR2(125)
관계 nVARCHAR2(10)
*/
CREATE TABLE tbl_addr (
    id NUMBER PRIMARY KEY,
    name nVARCHAR2(50) NOT NULL,
    tel VARCHAR2(20),
    addr nVARCHAR2(125),
    chain nVARCHAR2(10)
);

CREATE SEQUENCE SEQ_ADDR
START WITH 1 INCREMENT BY 1;
