-- 사용자 4
/*
    id, bs_id PK , NUMBER
    작성일자, bs_date, VARCHAR2(10), 2019-10-24
    작성시각, bs_time, VARCHAR2(10), 13:15:00
    작성자, bs_writer, nVARCHAR2(20)
    제목, bs_subject, nVARCHAR2(125)
    내용, bs_text, nVARCHAR2(1000)
    조회수, bs_count, NUMBER
*/

CREATE TABLE tbl_bbs(
    bs_id  NUMBER PRIMARY KEY,
    bs_date VARCHAR2(10) NOT NULL, -- 2019-10-24
    bs_time VARCHAR2(10) NOT NULL, -- 13:15:00
    bs_writer nVARCHAR2(20) NOT NULL,
    bs_subject nVARCHAR2(125) NOT NULL,
    bs_text nVARCHAR2(1000) NOT NULL,
    bs_count NUMBER

);

CREATE SEQUENCE seq_bbs
START WITH 1 INCREMENT BY 1;
  