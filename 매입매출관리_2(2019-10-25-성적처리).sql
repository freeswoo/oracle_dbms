CREATE TABLE tbl_score (
    sc_seq	NUMBER		PRIMARY KEY,
    sc_name	nVARCHAR2(50)	NOT NULL,	
    sc_subject	nVARCHAR2(5)	NOT NULL,	
    sc_score	NUMBER	NOT NULL,	
    sc_sbcode	VARCHAR2(5),		
    sc_stcode	VARCHAR2(5)	
);

SELECT sc_name 
FROM tbl_score 
GROUP BY sc_name ;

CREATE TABLE tbl_subject (
    sb_code	VARCHAR2(5)		PRIMARY KEY,
    sb_name	nVARCHAR2(50)	NOT NULL,	
    sb_pro	nVARCHAR2(50)	
);


CREATE TABLE tbl_student (
    st_code	VARCHAR2(5)		PRIMARY KEY,
    st_name	nVARCHAR2(50)	NOT NULL,	
    st_tel	VARCHAR2(20),		
    st_addr	VARCHAR2(125),		
    st_grade	NUMBER,		
    st_dcode	VARCHAR2(5)		
)