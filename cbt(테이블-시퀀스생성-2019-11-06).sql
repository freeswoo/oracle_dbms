DROP TABLE tbl_cbt;

CREATE TABLE tbl_cbt (
    CB_CODE	NUMBER	NOT NULL	PRIMARY KEY,
    CB_QUIZ	nVARCHAR2(125)	NOT NULL,	
    CB_EX01	nVARCHAR2(125)	NOT NULL,	
    CB_EX02	nVARCHAR2(125)	NOT NULL,	
    CB_EX03	nVARCHAR2(125)	NOT NULL,	
    CB_EX04	nVARCHAR2(125)	NOT NULL,	
    CB_ANSWER nVARCHAR2(125) NOT NULL	
);

CREATE SEQUENCE SEQ_CBT
START WITH 1 INCREMENT BY 1;

COMMIT;




