COMMIT;

-- 도서금액(b_price)
-- 
UPDATE tbl_books
SET b_price = ROUND(DBMS_RANDOM.VALUE(10000,50000));

SELECT * FROM tbl_books;
COMMIT;

SELECT * FROM tbl_books;