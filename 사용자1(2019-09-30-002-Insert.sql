-- git hub에 프로젝트를 업로드 할때
-- 불필요한 파일이나 비밀번호가 입력된 파일등
-- 업로드를 하지 않아야 될 파일들은
-- git 폴더에 .gitignore 파일을 만들고
-- 파일의 이름, 폴더 이름들을 기록해 주면 된다.
-- test.java 라고 기록하면 test.java 파일은 git hub에 업로드가 되지 않는다.
-- data/ 라고 기록하면 git 폴더 아래에 data 폴더의 모든 파일을 업로드 되지 않는다
-- 단, 최초에 프로젝트를 올릴때 .gitignore를 먼저 설정해 두어야 한다.
-- 이미 업로드가 된 파일이나 폴더는 삭제하기가 매우 까다롭다.

-- bizwork/oracle 폴더를 업로드 하기전에 .gitignore 파일을 만들고
-- data/ 라고 기록을 추가 했다.

-- tbl_student 테이블에 데이터를 추가하고, 조회하기

SELECT * FROM tbl_student;

-- 기존데이터를 삭제하고 추가
DELETE FROM tbl_student;

INSERT INTO tbl_student(st_num, st_name, st_addr, st_tel)
VALUES ('A0001','홍길동','서울특별시','010-111-1234');

INSERT INTO tbl_student(st_num, st_name, st_addr, st_tel)
VALUES ('A0002','이몽룡','익산시','010-222-1234');

INSERT INTO tbl_student(st_num, st_name, st_addr, st_tel)
VALUES ('A0003','성춘향','남원시','010-333-1234');

INSERT INTO tbl_student(st_num, st_name, st_addr, st_tel)
VALUES ('A0004','장길산','충정남도','010-444-1234');

INSERT INTO tbl_student(st_num, st_name, st_addr, st_tel)
VALUES ('A0005','장보고','해남군','010-555-1234');

-- 데이터를 추가할때
-- [table](칼럼리스트)와 VALUES(값리스트) 는
-- 반드시 개수와 순서가 서로 일치해야 한다.
-- 개수가 일치하지 않으면 오류가 발생을 하고
-- 순서가 일치하지 않으면 엉뚱한 모양(순서)으로 데이터가 추가 될수 있다.
INSERT INTO tbl_student(st_num, st_name, st_addr, st_tel)
VALUES ('A0006','임꺽정','010-666-1234','함경도');

-- 1. 모든 데이터를 조건없이 보여라
SELECT * FROM tbl_student;

-- 2. tbl_student 에서 학번, 이름, 주소, 전화번호 칼럼만 리스트에 보이면 좋겠다.
SELECT st_num, st_name, st_addr, st_tel
FROM tbl_student;

-- 3. tbl_student 에서 이름, 학번, 전화번호, 주소 순서로 칼럼을 리스트에 보이면 좋겠다.
SELECT st_name, st_num, st_tel, st_addr
FROM tbl_student;

-- 4. 리스트를 볼때 원래의 칼럼이름 대신에 별명을 사용하기
-- 표준 SQL은 AS 별명 형식으로 사용해야 하며, 오라클에서는 AS를 생략해도 된다.
-- 다만, 표준 SQL을 사용하는 연습을 하는 것이 좋겠다.

-- 표준 SQL
SELECT st_num AS 학번, st_name AS 이름, st_tel AS 전화번호, st_addr AS 주소
FROM tbl_student;

-- 오라클 SQL
SELECT st_num 학번, st_name 이름, st_tel 전화번호, st_addr 주소
FROM tbl_student;

-- 데이터 리스트(row, recored)중에서 필요한 부분만 보고 싶을때
-- 1. tbl_student에 보관중인 데이터 중에서 이름이 '홍길동'인 리스트만 보고싶다.
-- WHERE 조건 절
SELECT * FROM tbl_student
WHERE st_name = '홍길동';

-- 동명이인인 홍길동 데이터를 추가
INSERT INTO tbl_student(st_num, st_name, st_addr, st_tel)
VALUES ('A0007','홍길동','부산광역시','010-777-1234');

-- tbl_student 데이터들 중에서 이름(st_name칼럼 값)이 '홍길동'인
-- 데이터들(리스트)를 보여달라
SELECT * FROM tbl_student
WHERE st_name = '홍길동'; -- if(tbl_student.st_name = "홍길동") viewList()

-- student 테이블에서 이름(st_name)이 홍길동 인 데이터를 찾아서
-- 학번, 이름, 전화번호 칼럼만 보여달라
SELECT st_num, st_name, st_tel
FROM tbl_student
WHERE st_name = '홍길동';

-- SELECT 명령문을 사용할때
-- 칼럼리스트를 * 로 사용하지 않고 필요한 칼럼만 나열해 주는 것이
-- 많은 양의 데이터를 조회할때는 속도면에서 다소 유리하다.
-- 조회를 한후 특정 칼럼의 값을 응용프로그램에서 사용하려고 할때
--      위치(index)로 칼럼 값을 추출했을때 정확히 원하는 위치 값을 보장하여
--      오류를 줄일 수 있다.
SELECT * FROM tbl_student;

-- projection : 칼럼리스트를 나열하는 것
SELECT st_num, st_name, st_tel, st_addr, st_grade, st_dept, st_age
FROM tbl_student;

-- 학생 테이블에서 이름이 홍길동이고 주소가 서울특별시인 데이터만 보고싶다.
-- 다중조건 조회
-- ADN 조건 : 여러 조건이 모두 true 인 리스트만 보여라
SELECT * FROM tbl_student
WHERE st_name = '홍길동' AND st_addr = '서울특별시';

-- 학생테이블에서 이름이 홍길동 이거나 이몽룡인 데이터들을 보고 싶다.
-- OR 조건 : 여러 조건중에 한가지라도 true인 리스트를 보여라
SELECT * FROM tbl_student
WHERE st_name = '홍길동' OR st_name = '이몽룡';


-- 학생테이블에서 이름이 홍길동 이거나 주소가 서울특별시 인 데이터들을 보고 싶다.
SELECT * FROM tbl_student
WHERE st_name = '홍길동' OR st_addr= '서울특별시';

-- 학생테이블에서 이름이 '이몽룡' 이거나 주소가 '남원시' 인 데이터를 보고 싶다
SELECT * FROM tbl_student
WHERE st_name = '이몽룡' OR st_addr= '남원시';

-- 칼럼값들을 서로 연결해서 한개의 문자열처럼 리스트를 보는방법
SELECT st_num || ' + ' || st_name || ' + ' || st_tel AS 칼럼
FROM tbl_student;

SELECT st_num || ':' || st_name || ':' || st_tel AS 칼럼
FROM tbl_student;

-- 문자열칼럼에 저장된 값의 일부분만 조건으로 설정하는 방법
-- 데이터를 추가하면서 
-- 주소를 어떤 데이터는 '서울특별시'라고 하고
--      어떤 데이터는 '서울시'라고 했다.
-- 이럴경우 서울특별시 라고 조회를 하면 서울시 인 데이터는 보이지 않고
-- 서울시 라고 조회를 하면서 서울특별시 데이터는 보이지 않게 된다.
-- 이럴때 '서울' 이라는 문자열이 포함된 데이터만 보고 싶을때
-- 부분 문자열 조건 조회라는 방법을 사용한다.
-- 키워드 : LIKE

SELECT * FROM tbl_student
WHERE st_addr = '서울시' ;

-- 학생테이블의 조소칼럼에 저장된 문자열이 '서울'이라는 문자열로 시작되는 데이터들을 보여라
SELECT * FROM tbl_student
WHERE st_addr LIKE '서울%' ;

-- 학생테이블의 주소칼럼에 저장된 문자열이 '시' 라는 문자열로 끝나는 데이터들을 보여라
SELECT * FROM tbl_student
WHERE st_addr LIKE '%시' ;

SELECT * FROM tbl_student
WHERE st_name LIKE '홍%' ; -- 이름이 '홍'으로 시작되는 데이터

SELECT * FROM tbl_student
WHERE st_name LIKE '%길동' ; -- 이름이 '길동'으로 끝나는 데이터
-- 길동이, 길동이가, 길동이는 등의 데이터는 보이지 않는다.

-- 중간문자열 검색
SELECT * FROM tbl_student
WHERE st_name LIKE '%길%' ; -- 이름문자열 중간에 '길'이 포함된 모든 데이터
-- LIKE 연산자키워드
--      SELECT 조회명령이 실행될때 데이터 많으면 매우 속도가 느려진다.
--      INDEX 라던가 기법들을 사용하여 SELECT 속도를 높이려고 만든 것들이
--      무력화 되어 버린다.

-- SQL에서는 문자열로 설정된 칼럼에 저장된 데이터가 
-- 일정한 길이를 갖고 있을때
-- 비교연산자(<>)를 사용하여 값을 조회 할 수 있다.
SELECT * FROM tbl_student
WHERE st_tel >= '010-111' AND st_tel <= '010-333-9999' ;

-- 학생데이터를 조회하고 싶은데
-- 이름은 알지 못하고, 학번이 3번부터 6번 사이에 있었던 것 같다.
-- 이럴때 학번 데이터는 문자열 이지만 저장된 구조가 5자리로 일정하므로
-- 비교연산자를 사용하여 데이터를 조회 해 볼수 있다.
SELECT * FROM tbl_student
WHERE st_num > 'A0003' AND st_num < 'A0006' ;

-- 어떤 범위내에 있는 데이터 리스트를 보고자 할때
-- 학번이 A0003 부터 A0006까지 범위의 데이터를 보고자 할때
SELECT * FROM tbl_student
WHERE st_num BETWEEN 'A0003' AND 'A0006' ;

SELECT * FROM tbl_student;

-- 주소가 익산시, 남원시, 해남군 인 모든 데이터를 보고자 할때
SELECT * FROM tbl_student
WHERE st_addr = '익산시' OR st_addr = '남원시' OR st_addr = '해남군';

SELECT * FROM tbl_student
WHERE st_addr IN ('익산시','남원시','해남군');

-- 만약 찾고자 하는 데이터의 학번을 알고 있다면
-- 학번으로 조회를 하면 필요한 데이터 1개만 보여주어
-- 훨씬 업무처리가 쉬워질 것이다.
SELECT * FROM tbl_student
WHERE st_num = 'A0007' ;

-- 개체무결성
-- PK로 설정된 칼럼을 조건으로 하여 데이터를 조회하면
-- table에 데이터가 얼마가 저장되어 있던 상관 없이
-- 출력되는 리스트는 1개 이거나 없다.
-- 절대 2개 이상 출력되지 않는다.
-- PK는 절대 중복데이터가 없다.
-- PK는 절대 비어있으면(NULL) 안된다. : NULL 값이면 안된다.
-- st_num가 PK로 되어 있는데 생략한 채로 데이터를 추가하려고 하면
-- 오류가 발생한다.
INSERT INTO tbl_student(st_name, st_tel)
VALUES('김정은','010-999-9999') ;

-- DBMS의 임시저장소에 임시로 저장된 데이터를 storage에 저장하는 명령
-- DCL 명령, TCL(Transaction Controll Lang)
COMMIT ;

SELECT * FROM tbl_student;