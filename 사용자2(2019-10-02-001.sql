-- 여기는 USER2 화면입니다.
SELECT * FROM tbl_address;

UPDATE tbl_address SET age = 33
WHERE id = 5;

UPDATE tbl_address SET age = 0
WHERE id = 4;
SELECT * FROM tbl_address;

-- tbl_address 테이블의 age 칼럼에 값이 입력되지 않은
-- 레코드들만 보여달라
SELECT * FROM tbl_address
WHERE age IS NULL;

-- tbl_address 테이블의 age 칼럼에 어떤 값이라도 입력되어 있으면
-- 그 리스트를 보여달라
SELECT * FROM tbl_address
WHERE age IS NOT NULL;

-- 데이터 많이(다량으로) 추가를 한 후
-- 혹시 중요한 칼럼의 데이터를 누락시키지 않았나를 판별하고자 할때
-- 사용하는 조회 명령문

-- 오라클에서는 ''(중간에 빈간등 아무런 문자열이 없는형태)는
-- NULL과 같은 의미로 본다.
UPDATE tbl_address SET chain = ''
WHERE id = 3;
SELECT * FROM tbl_address;

-- '   '(중간에 space)가 있는 문자열을 칼럼에 저장을 하면
-- (null) 기호가 사라지고 빈칸으로 보인다.
-- WHITE SPACE라고 하며 실제로는 1개 이상의 space 문자열이 저장되어 있다
UPDATE tbl_address SET chain = '   '
WHERE id = 3;
SELECT * FROM tbl_address;

SELECT * FROM tbl_address WHERE address IS NULL; -- address 칼럼이 비어있는 레코드들
SELECT * FROM tbl_address WHERE address IS NOT NULL; -- address 칼럼에 값이 있는 레코드들
SELECT * FROM tbl_address; -- 아무런 조건에 관계없이 모든 레코드들

UPDATE tbl_address SET chain = '001' WHERE id = 1;
UPDATE tbl_address SET chain = '001' WHERE id = 2;
UPDATE tbl_address SET chain = '002' WHERE id = 3;
UPDATE tbl_address SET chain = '003' WHERE id = 4;
UPDATE tbl_address SET chain = '003' WHERE id = 5;

SELECT * FROM tbl_address;

-- 레코드 리스트를 확인했더니 CHAIN 칼럼의 값들이 알수없는 기호(숫자값)로 저장되어 있다.
-- 현재는 001,002,003의 기호값들이 무엇을 의미하는지 알수가 없다.
-- INSERT를 수행한 사람에게 물어봤더니
-- 001은 가족, 002 친구, 003 이웃 이라고 한다.
-- SELECT를 실행할때 chain이 001이면 가족, 002이면 친구, 003이면 이웃이라는 문자열로
-- 나타났으면 좋겠다.
SELECT id,name,address,chain,
-- chain 칼럼의 값이 001이면 '가족'이라고 보이고, 아닐경우
-- 002인지 검사하고 002이면 '친구'라고 보여라

-- DECODE(칼럼, 조건값, true일때, 아닐때)
--      다른 DB에서는 IF(), IIF()
    DECODE(chain,'001','가족',
        DECODE(chain,'002','친구',
            DECODE(chain,'003','이웃'))) AS 관계
FROM tbl_address;

-- 이 SQL에서 만일 '관계' 항목에 (null)값이 존재한다는 것은
-- chain 칼럼에 값이 잘못 입력되었거나,
--      조건식이 잘못되었거나 한 경우가 된다.

-- 아래 SQL 명령을 수행했는데
-- 결과가 1개라도 있다 라는 것은
-- chain 칼럼에 잘못된 데이터가 추가된 것으로 이해해도 된다.
SELECT id,name,address,chain,
    DECODE(chain,'001','가족',
        DECODE(chain,'002','친구',
            DECODE(chain,'003','이웃'))) AS 관계
FROM tbl_address
WHERE DECODE(chain,'001','가족',
        DECODE(chain,'002','친구',
            DECODE(chain,'003','이웃'))) IS NULL;
-- 테스트를 위해서 아래 SQL문을 수행하면서
-- chain 칼럼에 값을 101로 저장했다.
-- 그리고 위의 SELECT SQL을 수행했더니
-- 1개의 레코드가 보였다
-- 결국 chain 칼럼에 데이터는 모두 (null)값이 아닌 상태이어서
-- 값이 저장은 되어 있지만
-- 원하지 않은 값이 저장되어 있음을 알수 있다.
-- 보기위한 SQL이기도 하지만, 데이터를 검증하는 도구로 활용하기도 한다.
INSERT INTO tbl_address (id,name,tel,chain)
VALUES(6,'장보고','010-777-7777','101');

-- 주소록 테이블에 저장된 모든 데이터를 아무런 조건없이 보여달라
-- SELECT * : projection을 * 로 표현을 하면 모든 칼럼을 다 보여주는 형식인데
--      원하는 칼럼의 순서대로 보여진다는 보장이 없다.
SELECT * FROM tbl_address ;

-- 리스트를 보이는데
-- 보여지는 칼럼의 순서를 id,
--이름(name),
--전화번호(tel),
--주소(address),
--관계(chin),
--생년월일(birth),
--나이(age) 와 같이 보고싶다
-- projection(칼럼들의 나열)을 원하는 순서대로 보고자 할때는
-- SELECT 키워드에 칼럼 리스트를 나열해 주어야 한다.
SELECT id,name,tel,address,chain,birth,age
FROM tbl_address ;

-- 리스트를 보는데 모든 칼럼을 다 보이지 않고
-- 필요한 몇몇 칼럼만 보고자 할때는
-- 보고자 하는 칼럼들만 나열을 해주면 된다.
SELECT id,name,tel,chain
FROM tbl_address ;

-- 데이터들 리스트에서 원하는 조건을 부여하여
-- 필요한 리스트만 확인하기
-- 기본 SELECT FROM 명령어에 WHERE 조건절을 추가하여 사용한다.
-- name 칼럼에 저장된 값이 홍길동 인 리스트들만 보여라
-- name 칼럼에 저장된 값이 홍길동 인 모든 데이터들을 보여라
SELECT *
FROM tbl_address
WHERE name = '홍길동';

SELECT *
FROM tbl_address
WHERE name = '이몽룡';
-- 리스트 = 레코드 = row

INSERT INTO tbl_address(id,name,tel)
VALUES(10,'조덕배','010-222-2222');

INSERT INTO tbl_address(id,name,tel)
VALUES(9,'조용필','010-333-2222');

INSERT INTO tbl_address(id,name,tel)
VALUES(8,'양희은','010-123-1234');

SELECT * FROM tbl_address ;

-- 데이터를 조회할때 특정칼럼을 기준으로 정렬을 수행하여
-- 리스트를 보이기
-- 정렬 : 기본 SELECT 에 ORDER BY 절을 추가하여 사용
-- name 칼럼을 기준으로 오름차순 정렬을 하여 보여라
SELECT * FROM tbl_address
ORDER BY name ;

-- in 칼럼을 기준으로 오름차순 정렬
SELECT * FROM tbl_address
ORDER BY id ;

-- 일단 name 칼럼으로 오름차순 정렬을 하고
-- 만약 name 칼럼의 값이 같은 리스트가 2개 이상 있으면
-- address 칼럼으로 오름차순 정렬을 하라
SELECT * FROM tbl_address
ORDER BY name, address;

-- name 칼럼으로 내림차순 정렬을 수행하고
-- 이어서 address 칼럼으로 오름차순 정렬하라
-- 칼럼이름 뒤에 DESC(SESCENDING)이 있으면 내림차순(큰 -> 작은) 정렬
-- 아무런 키워드가 없으면 ASC(ASCENDING)이 생략된 것이다.
--      오름차순(작은 -> 큰) 정렬
SELECT *FROM tbl_address
ORDER BY name DESC, address ;

-- id 칼럼은 PK로 선언되어 있어서
-- 절대 중복값이 있을수 없다.
-- 그럼에도 불구하고 칼럼들을 나열한 것은 의미 없는 코드를 작성한 것이다.
SELECT * FROM tbl_address
ORDER BY id, name, address, tel, chain, rem, birth, age;

--데이터를 추가하고 수정한 사항을 storage에 저장(물리적 저장)하기 위해서
COMMIT ;



