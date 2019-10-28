-- 여기는 USER4 화면입니다.
 
SELECT * FROM tbl_books;

/*
PRIMARY KEY
DBMS 객체(개체)무결성을 보장(유지)하기 위해 사용하는 중요한 요소
객체 무결성
1. 내가 어떤 데이터를 조회했을때
    나타나는 데이터는 내가 필요로 했던 데이터이다 라는 보장
    
2. PK를 WHERE 조건으로 SELECT를 했을때 나타나는 데이터는 1개의 레코드이며
    이 데이터는 내가 원하는 데이터이다 라는 보장
    
3. PK는 1개의 칼럼을 지정하는 것이 원칙이지만
    실제 상황에서 1개의 칼럼만으로 PK를 지정하지 못하는 경우가 있다.
    이럴때는 2개이상의 복수 칼럼을 묶어서 PK로 지정하는 경우도 있다.
    
    예) 거래처정보
    거래처명 + 대표 + 전화번호 칼럼을 묶어서 PK로 지정하는 경우

4. 복수의 칼럼을 PK로 지정하는 경우
    UPDATE, DELETE를 수행할때 PK를 WHERE 조건으로 명령을 수행할때
    상당히 번잡한 SQL을 구성해야 하는 경우 도 있다.
    
    예)
    DELETE FROM [거래처정보]
    WHERE 거래처명 = '거래처명' AND 대표 = '대표' AND 전화번호 = '전화번호'

5. 가급적이면 1개의 칼럼을 PK로 지정하는 것이 좋고
    정말 PK로 지정할 칼럼을 선택할수 없을때는
    실제 존재하는 데이터가 아닌 새로운 칼럼을 하나 추가하고
    그 칼럼을 PK로 설정하는 방법도 있다.
    
    예) '코드', 'ID' 와 같은 칼럼을 추가해서 사용한다.

6. '코드' 칼럼은 최초 데이터를 추가하기 위해 준비단계에서
    일정한 조건으로 만들어 사용하는 경우가 많기 때문에
    특별히 어려움이 발생하지는 않는다.
    
    'ID' 칼럼은 실제 데이터와 관계없이 '일련번호', 'SN' 형식으로
    지정하는 경우도 많다.
    
    'ID' 칼럼은 보편적인 DBMS에서는 최대 자릿수를 갖는 숫자형으로 지정하고
    해당 칼럼에 AUTO INCREMENT 라는 옵션을 지정하여
    INSERT를 수행할때 마다 자동으로 새로운 숫자 값이 생성되도록 할 수 있다.
    
    하지만
    오라클 11이하에서는 AUTO INCREMENT하는 옵션이 없어서
    여러가지 방법으로 사용한다.
    
    그중 가장 많이 사용하는 방법이
    SEQUENCE Object를 생성하고 SEQUENCE의 NEXTVAL 값을 활용하여
    데이터를 추가할때 ID 칼럼에 새로운 값이 만들어져 저장되도록
    사용한다.
    
    오라클의 SEQ는 한번 생성을 하면
    현재상태를 영구히 보관하고 있다가 언제든지 NEXTVAL을 호출하면
    현재상태 + (INCREMENT BY로 지정한 값만큼) 연산을 수행하여
    새로운 값을 만들어 낸다.
*/

/*
오라클에서 RANDOM, SEQ외에 사용할수 있는 PK값 생성하기
    GUID
    Global Unique IDENTIFIED
    범 우주적으로 유일한 값
    32Byte의 중복되지 않는 키값을 생성
    
    B8F3F66BD6634FD1A16EC5F269DD5820
    
    오라클에서는
    GUID를 지정할 칼럼의 데이터 형식을
    RAW(무한히 크기에 제한이 없는 바이너리 형태) 값으로 지정하거나
    nVARCHAR2(125) 이상으로 지정해서 사용을 한다.
*/

SELECT SYS_GUID() FROM DUAL;

INSERT INTO tbl_books(b_code, b_name)
VALUES(SYS_GUID(), 'GUID 연습');

/*
index
자주 SELECT를 수행하는 칼럼이 있을 경우
해당 칼럼을 index 라는 Object로 생성을 해 두면
SELECT를 수행할때 index를 먼저 조회하고
index로 부터 해당 데이터가 저장된 Record의 주소를 얻고
주소를 통해서 table로 부터 데이터를 가져와서
SELECT(조회) 수행 속도, 효율을 높이는 기법

TABLE을 생성할때 PK를 지정하면
PK 칼럼은 기본적으로 INDEX로 설정이 된다.
*/

-- b_name 칼럼을 별도로 index로 지정하겠다.
CREATE INDEX IDX_NAME ON tbl_books(b_name);
SELECT * FROM tbl_books WHERE b_name = '자바';

-- DBMS 업무중에 b_name(도서명)과 b_writer(저자)를 조건으로 하는
-- SELECT문을 자주 수행하더라 라면
SELECT * FROM tbl_books WHERE b_name = '자바' AND b_writer = '홍길동';

CREATE INDEX IDX_NAME_WRITER ON tbl_books(b_name, b_writer);
DROP INDEX IDX_NAME_WRITER;

/*
INDEX는 SELECT를 수행하는데 매우 효율적으로 작동되는 구조이다
하지만 개발 초기에 많은 양의 데이터를 INSERT를 수행햐야 할 경우에는
INDEX를 일단 설정하지 말고 사용하는 것이 효율적이다.

초기 데이터를 추가할때 가급적이면
PK로 설정된 칼럼을 기준으로 정렬된 원본데이터로 INSERT를 수행하는 것이 효율적이다.

INDEX를 필요이상으로 너무 많이 설정하면
INSERT, UPDATE, DELETE를 수행할때 매우 비효율적으로 작동될수 있고
INDEX OBJECT가 문제를 일으키는 상황도 만들어 질수 있다.

INDEX는 최소한으로 만들어라
*/

DROP INDEX IDX_NAME;

-- UNIQE INDEX
-- 마치 table을 생성할때 해당하는 칼럼에 UNIQUE 제약조건을 설정한 것처럼 작동이 된다.
-- 기존에 저장되어 있는 데이터가 UNIQUE 상태가 아니면
-- 인덱스가 생성되지 않는다.
CREATE UNIQUE INDEX IDX_NAME ON tbl_books(b_name);

-- INDEX가 손상된 것 같다 ... DROP 후 CREATE 실행
-- 상용 DBMS에서는 INDEX가 손상되면 DBMS 자체적으로 Rebuild하는 기능이 포함되어 있다.






