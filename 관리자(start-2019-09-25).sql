-- 주석(remark) 문은 --로 시작한다.
-- 모든 명령문이 끝나는 곳에 ; 을 붙여야 한다.
-- 오라클의 모든 keyword는 대소문자 관계 없다.
-- KEYWORD는 모두 대문자로 작성할 예정
-- keyword가 아닌 경우는 소문자로 작성할 예정

-- 문자열이나 특별한 경우는 대소문자를 구별하는 경우도 있다.
-- 이때는 대소문자 구분을 공지 한다.

SELECT 30 + 40 FROM dual ;
select 30 * 40 from dual ;

-- 조회할때(SELECT 할때) 컴마(,)로 구분을 하면
-- TABLE로 보여줄때 Column으로 구분하여 보여준다.
SELECT 30+40, 30*40, 40/2, 50-10 FROM dual;

-- 문자열은 작은 따옴표(SQ,' ) 묶어준다
-- * 큰 따옴표 사용하지 않음!!!
SELECT '대한민국' FROM dual;

-- 문자열을 연결하여 보여줄때는 ||로 문자열을 이어서 사용한다.
SELECT '대한' || '민국' FROM dual;
SELECT '대한','민국','만세','KOREA' FROM dual;

-- 조회할때 SELECT * FROM ??? 명령문을 사용하면
-- 모든 것을 보여달라 라는 의미
SELECT * FROM dual;

SELECT * FROM v$database; -- sys라는 사용자 권한으로 볼수 있는 모든 데이터베이스 내용을 보여달라





