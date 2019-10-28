create table tbl_score (
    sc_seq	NUMBER		PRIMARY KEY,
    sc_name	nVARCHAR2(50)	NOT NULL,	
    sc_subject	nVARCHAR2(5)	NOT NULL,	
    sc_score	NUMBER,		
    sc_sbcode	VARCHAR2(5),		
    sc_stcode	VARCHAR2(5)		
);

create table tbl_subject (
    sb_code	VARCHAR(5)		PRIMARY KEY,
    sb_name	nVARCHAR2(50)	NOT NULL,	
    sb_pro	nVARCHAR2(5)		
);

select sc_subject, count(*)
from tbl_score
group by sc_subject;


SELECT sc_name
from tbl_score
group by sc_name;

create table tbl_student (
    st_code	VARCHAR(5)		PRIMARY KEY,
    st_name	nVARCHAR2(50)	NOT NULL,	
    st_tel	VARCHAR(20),		
    st_addr	VARCHAR(125),		
    st_grade	NUMBER,		
    st_decode	VARCHAR(5)		
);
