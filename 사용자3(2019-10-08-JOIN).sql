-- 여기는 USER3 화면입니다.

-- JOIN 보통 2개 이상의 테이블에 나뉘어서 보관중인 데이터를
-- 서로 연계해서 하나의 리스트처럼 출력하는 SQL 명령형태

-- EQ, 완전, 내부조인
-- 두 테이블에 연계된 칼럼이 모두 존재할 경우
-- 두 테이블간에 완전 참조무결성이 보장되는 경우
-- 이 조인이 표시하는 리스트를 카티션곱 이라고 표현한다.
SELECT *
FROM tbl_books B, tbl_genre G
WHERE b.b_genre = g.g_code;

-- EQ 조인의 경우
-- 두 테이블이 완전 참조무결성 조건에 위배되는 경우 결과가 신뢰성을 잃는다.

/*
                 참조 무결성 조건
    ------------------------------------------------
    원본Table(칼럼값)      =       참조Table(칼럼값)
    ------------------------------------------------
    값이 있다              >>       반드시 있다
    있을수도 있다          <<       있다
    절대 있을수 없다       <<       없다
    ------------------------------------------------

참조 무결성 조건은
테이블간에 EQ JOIN 실행했을때
결과에 신뢰성을 보장하는 조건

*/

-- 두 테이블간에 참조무결성을 무시하고 JOIN 실행하기

-- 새로운 도서가 입고가 되었는데 그동안에 사용하던 장르와 완전 다른 분야이다
-- 그래서 새로운 장르코드를 생성해서 010이라고 사용하기로 결정을 했다.
INSERT INTO tbl_books(b_isbn, b_title, b_comp, b_writer, b_genre)
VALUES('979-009','아침형인간','하늘소식','이몽룡','010') ;

-- 만약 tbl_books 테이블하고, tbl_genre 테이블간에 참조무결성 조건을 설정해 두었더라면
-- tbl_books 테이블에는 INSERT를 수행하지 못한다.
-- 하지만, 아직 참조무결성 조건을 설정하지 않았기 때문에 INSERT가 가능하다.

SELECT *
FROM tbl_books B, tbl_genre G
WHERE b.b_genre = g.g_code;
-- 그 결과 EQ JOIN으로 확인해 보니 새로 등록한 도서리스트가 누락되어 출력 되었다.
-- 이제 출력 결과는 신뢰성을 잃게 되었다.

-- 이런 상황이 발생했을 경우
-- 참조무결성을 무시하고 (일부)신뢰성이 있는 리스트를 보기 위해서 다른 JOIN을 수행한다.

-- LEFT JOIN
-- LEFT 에 있는 table의 리스트는 모두 보여주고
-- ON 조건에 일치하는 값이 오른쪽의 table에 있으면 값을 보이고,
--      그렇지 않으면 (null)로 표현하라
SELECT *
FROM tbl_books B -- 리스트를 확인 하고자 하는 table
    LEFT JOIN tbl_genre G -- 참조할 table
        ON B.b_genre = G.g_code -- 참조할 칼럼연계
ORDER BY b.b_isbn; -- 도서 코드 순서로 정렬

-- tbl_books 테이블의 b_title 칼럼의 값이 '아침형인간'인 리스트를 보이되
-- 만약 b_genre 칼럼값과 일치하는 값이 tbl_genre의 g_code 칼럼에 있으면
-- 리스트를 보여주고 그렇지 않으면 (null)이라고 표현하라
SELECT *
FROM tbl_books B
    LEFT JOIN tbl_genre G
        ON B.b_genre = G.g_code
WHERE B.b_title = '아침형인간';

SELECT B.b_isbn, B.b_title, B.b_comp, B.b_writer,
        G.g_code, G.g_name
FROM tbl_books B
    LEFT JOIN tbl_genre G
        ON B.b_genre = G.g_code
WHERE B.b_title LIKE 'SQL%'
ORDER BY B.b_title;

SELECT B.b_isbn, B.b_title, B.b_comp, B.b_writer,
        G.g_code, G.g_name
FROM tbl_books B
    LEFT JOIN tbl_genre G
        ON B.b_genre = G.g_code
WHERE G.g_name LIKE '장편소설' ;

SELECT B.b_isbn, B.b_title, B.b_comp, B.b_writer,
        G.g_code, G.g_name
FROM tbl_books B
    LEFT JOIN tbl_genre G
        ON B.b_genre = G.g_code;

-- 장르가 '장편소설'인 도서정보를 '장르소설'로 장르 명칭을 변경하고 싶다.
-- 테이블이 각각 books와 genre로 나뉘어 있고
-- 두 테이블을 JOIN해서 사용하는 중이기 때문에
-- tbl_genre 테이블의 g_name 칼럼 값을 변경한다.
SELECT * FROM tbl_genre;

UPDATE tbl_genre
SET g_name = '장르 소설'
WHERE g_code = '003';

SELECT B.b_isbn, B.b_title, B.b_comp, B.b_writer,
        G.g_code, G.g_name
FROM tbl_books B
    LEFT JOIN tbl_genre G
        ON B.b_genre = G.g_code;

-- tbl_books 리스트를 조회했더니 '장편소설'인 장르 데이터가 3개가 있다.
-- 만약 tbl_books 테이블에 장르칼럼을 이름으로 설정을 했더라면
-- 다음과 같은 UPDATE 문을 실행해야 할 것이다.
UPDATE tbl_books
SET b_genre = '장르소설'
WHERE b_genre = '장편소설';
-- 이 UPDATE 명령문을 실행하면 최소 2개이상의 레코드가 변경(UPDATE) 될 것이다.
-- 데이터베이스에서 1개 테이블에 2개이상의 레코드가 변경되는 실행은
-- 가급적 지양을 해야만 데이터의 무결성을 계속해서 유지할 수 있다.
-- 즉, UPDATE, DELETE 등을 수행할때는 1개의 레코드만 변경되도록
-- PK WHERE 조건에 설정해서 명령문을 수행하는 것이 좋다.

-- 이러한 이유로 테이블을 분리하고, 두 테이블을 JOIN해서 리스트를 출력하는
-- 복잡한 과정을 수행하게 된다.

-- 보통 1개의 테이블에 존재하는 데이터를 다수(2개)의 테이블로 분리하고
-- JOIN을 수행할 수 있도록 구조를 변경하는 작업을 데이터베이스 '제2정규화(2nd NF)라고 한다.
