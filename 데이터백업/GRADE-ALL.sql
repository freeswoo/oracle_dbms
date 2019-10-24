--------------------------------------------------------
--  파일이 생성됨 - 목요일-10월-24-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TBL_SCORE
--------------------------------------------------------

  CREATE TABLE "TBL_SCORE" 
   (	"S_ID" NUMBER, 
	"S_SCORE" NUMBER(3,0), 
	"S_REM" NVARCHAR2(50), 
	"S_SUBJECT" VARCHAR2(4 BYTE), 
	"S_STD" VARCHAR2(5 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_SUBJECT
--------------------------------------------------------

  CREATE TABLE "TBL_SUBJECT" 
   (	"SB_CODE" VARCHAR2(4 BYTE), 
	"SB_NAME" NVARCHAR2(20), 
	"SB_PRO" NVARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_DEPT
--------------------------------------------------------

  CREATE TABLE "TBL_DEPT" 
   (	"D_NUM" VARCHAR2(5 BYTE), 
	"D_NAME" NVARCHAR2(30), 
	"D_PRO" NVARCHAR2(20), 
	"D_TEL" VARCHAR2(20 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TBL_STUDENT
--------------------------------------------------------

  CREATE TABLE "TBL_STUDENT" 
   (	"ST_NUM" VARCHAR2(5 BYTE), 
	"ST_NAME" NVARCHAR2(50), 
	"ST_TEL" VARCHAR2(20 BYTE), 
	"ST_ADDR" NVARCHAR2(125), 
	"ST_GRADE" NUMBER(1,0), 
	"ST_DEPT" VARCHAR2(5 BYTE)
   ) ;
REM INSERTING into TBL_SCORE
SET DEFINE OFF;
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (1,86,null,'S001','T0015');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (2,53,null,'S002','T0001');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (3,90,null,'S004','T0060');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (4,52,null,'S003','T0047');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (5,60,null,'S001','T0061');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (6,50,null,'S001','T0085');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (7,55,null,'S001','T0016');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (8,90,null,'S001','T0037');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (9,81,null,'S001','T0086');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (10,54,null,'S001','T0048');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (11,65,null,'S003','T0017');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (12,73,null,'S005','T0002');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (13,83,null,'S001','T0062');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (14,58,null,'S003','T0049');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (15,81,null,'S006','T0063');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (16,68,null,'S005','T0037');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (17,81,null,'S001','T0027');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (18,59,null,'S003','T0050');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (19,52,null,'S005','T0086');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (20,74,null,'S002','T0064');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (21,65,null,'S004','T0075');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (22,65,null,'S002','T0065');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (23,58,null,'S004','T0051');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (24,68,null,'S002','T0052');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (25,85,null,'S002','T0028');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (26,65,null,'S004','T0087');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (27,90,null,'S003','T0029');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (28,89,null,'S004','T0001');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (29,87,null,'S006','T0066');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (30,95,null,'S006','T0061');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (31,100,null,'S002','T0037');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (32,80,null,'S006','T0086');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (33,72,null,'S001','T0030');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (34,61,null,'S001','T0018');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (35,71,null,'S001','T0053');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (36,76,null,'S004','T0064');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (37,95,null,'S002','T0076');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (38,70,null,'S006','T0088');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (39,82,null,'S002','T0077');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (40,84,null,'S001','T0002');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (41,57,null,'S003','T0067');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (42,56,null,'S002','T0068');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (43,95,null,'S004','T0019');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (44,61,null,'S005','T0069');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (45,87,null,'S005','T0075');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (46,66,null,'S002','T0089');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (47,60,null,'S002','T0054');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (48,62,null,'S006','T0038');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (49,75,null,'S001','T0055');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (50,68,null,'S005','T0003');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (51,97,null,'S002','T0004');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (52,100,null,'S006','T0039');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (53,96,null,'S004','T0056');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (54,59,null,'S001','T0031');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (55,50,null,'S004','T0032');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (56,58,null,'S005','T0018');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (57,69,null,'S005','T0040');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (58,65,null,'S003','T0030');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (59,74,null,'S006','T0078');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (60,80,null,'S006','T0032');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (61,81,null,'S001','T0033');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (62,89,null,'S006','T0041');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (63,78,null,'S001','T0090');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (64,70,null,'S002','T0030');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (65,75,null,'S004','T0020');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (66,76,null,'S002','T0018');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (67,99,null,'S004','T0057');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (68,51,null,'S005','T0038');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (69,70,null,'S001','T0038');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (70,78,null,'S002','T0005');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (71,73,null,'S003','T0055');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (72,95,null,'S001','T0006');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (73,53,null,'S006','T0050');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (74,87,null,'S002','T0003');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (75,53,null,'S006','T0030');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (76,88,null,'S006','T0007');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (77,82,null,'S006','T0079');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (78,61,null,'S004','T0007');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (79,61,null,'S006','T0027');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (80,59,null,'S004','T0042');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (81,83,null,'S002','T0075');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (82,55,null,'S006','T0070');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (83,53,null,'S001','T0080');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (84,80,null,'S004','T0065');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (85,94,null,'S006','T0056');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (86,74,null,'S006','T0068');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (87,58,null,'S003','T0051');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (88,87,null,'S005','T0091');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (89,62,null,'S001','T0029');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (90,96,null,'S006','T0069');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (91,68,null,'S004','T0033');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (92,91,null,'S003','T0087');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (93,57,null,'S004','T0043');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (94,50,null,'S002','T0071');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (95,70,null,'S004','T0015');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (96,86,null,'S003','T0081');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (97,92,null,'S005','T0055');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (98,59,null,'S003','T0008');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (99,96,null,'S004','T0030');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (100,58,null,'S006','T0021');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (101,72,null,'S002','T0049');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (102,52,null,'S006','T0022');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (103,88,null,'S001','T0072');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (104,89,null,'S001','T0041');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (105,71,null,'S006','T0042');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (106,100,null,'S001','T0021');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (107,92,null,'S001','T0073');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (108,56,null,'S005','T0043');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (109,94,null,'S003','T0023');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (110,95,null,'S005','T0044');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (111,94,null,'S005','T0087');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (112,80,null,'S002','T0017');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (113,70,null,'S002','T0055');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (114,60,null,'S005','T0092');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (115,73,null,'S003','T0070');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (116,83,null,'S004','T0024');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (117,99,null,'S006','T0093');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (118,54,null,'S003','T0074');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (119,62,null,'S001','T0019');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (120,95,null,'S001','T0079');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (121,75,null,'S005','T0054');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (122,55,null,'S002','T0069');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (123,54,null,'S004','T0044');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (124,93,null,'S006','T0094');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (125,84,null,'S004','T0094');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (126,65,null,'S005','T0020');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (127,89,null,'S001','T0082');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (128,72,null,'S002','T0056');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (129,69,null,'S005','T0094');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (130,68,null,'S003','T0065');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (131,99,null,'S004','T0074');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (132,74,null,'S002','T0029');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (133,92,null,'S003','T0091');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (134,96,null,'S006','T0002');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (135,63,null,'S006','T0033');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (136,98,null,'S002','T0009');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (138,94,null,'S006','T0051');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (139,83,null,'S006','T0016');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (141,65,null,'S002','T0042');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (142,67,null,'S004','T0016');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (144,73,null,'S005','T0025');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (145,71,null,'S003','T0095');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (147,99,null,'S002','T0015');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (148,69,null,'S004','T0062');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (150,50,null,'S005','T0089');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (151,64,null,'S003','T0076');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (153,62,null,'S002','T0019');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (154,87,null,'S001','T0067');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (155,51,null,'S003','T0034');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (157,75,null,'S002','T0043');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (158,61,null,'S002','T0080');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (160,81,null,'S005','T0068');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (161,90,null,'S005','T0023');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (163,77,null,'S006','T0043');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (164,59,null,'S003','T0089');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (166,59,null,'S004','T0083');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (167,95,null,'S004','T0070');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (169,94,null,'S006','T0074');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (170,54,null,'S005','T0061');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (172,65,null,'S004','T0058');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (173,57,null,'S004','T0048');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (174,81,null,'S003','T0010');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (176,97,null,'S005','T0006');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (177,73,null,'S003','T0068');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (179,84,null,'S004','T0082');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (180,63,null,'S002','T0085');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (182,86,null,'S006','T0006');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (183,51,null,'S002','T0096');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (185,85,null,'S006','T0028');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (186,95,null,'S006','T0034');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (188,93,null,'S001','T0035');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (189,52,null,'S002','T0093');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (191,66,null,'S003','T0007');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (192,87,null,'S005','T0079');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (193,88,null,'S004','T0027');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (195,61,null,'S002','T0039');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (196,91,null,'S006','T0059');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (198,66,null,'S002','T0058');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (199,63,null,'S004','T0028');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (201,93,null,'S003','T0011');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (202,64,null,'S001','T0094');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (204,70,null,'S004','T0036');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (205,70,null,'S005','T0066');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (207,91,null,'S003','T0073');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (208,91,null,'S002','T0087');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (210,75,null,'S006','T0012');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (211,67,null,'S001','T0024');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (213,96,null,'S001','T0020');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (214,63,null,'S004','T0018');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (215,68,null,'S004','T0085');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (217,59,null,'S006','T0047');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (218,96,null,'S002','T0048');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (220,96,null,'S005','T0071');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (221,83,null,'S001','T0034');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (223,58,null,'S001','T0066');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (224,83,null,'S003','T0085');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (226,85,null,'S003','T0032');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (227,85,null,'S002','T0082');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (229,69,null,'S003','T0084');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (230,100,null,'S002','T0050');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (232,100,null,'S006','T0073');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (233,89,null,'S006','T0097');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (234,76,null,'S004','T0017');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (236,57,null,'S005','T0024');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (237,97,null,'S001','T0096');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (239,82,null,'S005','T0026');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (240,92,null,'S001','T0098');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (242,66,null,'S002','T0002');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (243,60,null,'S004','T0013');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (245,92,null,'S005','T0080');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (248,56,null,'S003','T0006');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (249,62,null,'S006','T0036');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (251,79,null,'S001','T0040');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (253,73,null,'S003','T0019');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (255,91,null,'S002','T0012');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (258,94,null,'S002','T0027');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (259,59,null,'S004','T0053');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (262,64,null,'S002','T0078');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (264,85,null,'S006','T0040');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (265,63,null,'S005','T0056');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (268,58,null,'S006','T0014');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (270,51,null,'S005','T0016');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (272,67,null,'S002','T0081');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (274,96,null,'S006','T0018');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (277,82,null,'S005','T0063');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (278,74,null,'S006','T0075');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (280,66,null,'S003','T0025');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (283,99,null,'S004','T0089');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (284,94,null,'S006','T0054');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (287,72,null,'S002','T0032');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (289,97,null,'S001','T0063');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (291,99,null,'S005','T0053');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (293,51,null,'S004','T0004');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (294,61,null,'S006','T0077');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (297,80,null,'S002','T0099');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (299,99,null,'S005','T0036');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (302,91,null,'S001','T0100');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (303,67,null,'S004','T0009');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (306,98,null,'S004','T0063');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (307,100,null,'S002','T0095');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (308,87,null,'S002','T0026');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (309,72,null,'S002','T0059');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (310,52,null,'S003','T0027');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (311,79,null,'S006','T0048');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (312,69,null,'S001','T0078');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (313,70,null,'S005','T0070');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (314,84,null,'S004','T0052');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (315,55,null,'S002','T0092');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (316,57,null,'S003','T0042');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (317,59,null,'S004','T0023');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (318,56,null,'S003','T0094');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (319,80,null,'S006','T0071');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (320,81,null,'S004','T0040');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (321,99,null,'S006','T0095');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (322,65,null,'S006','T0013');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (323,56,null,'S001','T0059');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (324,97,null,'S001','T0045');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (325,69,null,'S003','T0021');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (326,77,null,'S002','T0013');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (327,62,null,'S003','T0057');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (328,72,null,'S004','T0081');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (329,51,null,'S003','T0100');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (330,69,null,'S005','T0022');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (331,75,null,'S006','T0025');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (332,89,null,'S002','T0008');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (333,91,null,'S006','T0020');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (334,50,null,'S002','T0051');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (335,89,null,'S002','T0006');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (336,58,null,'S004','T0012');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (337,52,null,'S004','T0078');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (338,73,null,'S006','T0008');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (339,72,null,'S004','T0099');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (340,67,null,'S003','T0048');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (341,53,null,'S001','T0010');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (342,66,null,'S004','T0068');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (343,83,null,'S001','T0069');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (344,62,null,'S002','T0100');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (345,90,null,'S006','T0076');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (346,72,null,'S001','T0028');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (347,68,null,'S005','T0077');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (348,66,null,'S002','T0084');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (349,63,null,'S001','T0075');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (350,83,null,'S006','T0082');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (351,72,null,'S001','T0057');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (352,59,null,'S004','T0002');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (353,94,null,'S002','T0060');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (354,54,null,'S003','T0080');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (355,79,null,'S005','T0098');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (356,72,null,'S003','T0052');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (357,55,null,'S003','T0043');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (358,70,null,'S001','T0058');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (359,72,null,'S003','T0044');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (360,85,null,'S001','T0097');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (361,82,null,'S003','T0022');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (362,59,null,'S003','T0083');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (363,80,null,'S003','T0064');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (364,81,null,'S005','T0012');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (365,68,null,'S001','T0004');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (366,89,null,'S005','T0021');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (367,100,null,'S001','T0074');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (368,71,null,'S005','T0032');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (369,68,null,'S004','T0076');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (370,98,null,'S006','T0023');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (371,67,null,'S004','T0008');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (372,61,null,'S001','T0065');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (373,57,null,'S004','T0097');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (374,57,null,'S004','T0050');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (375,54,null,'S003','T0001');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (376,71,null,'S005','T0027');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (377,50,null,'S006','T0100');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (378,62,null,'S003','T0090');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (379,100,null,'S006','T0072');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (380,56,null,'S001','T0060');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (381,95,null,'S006','T0015');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (382,86,null,'S005','T0010');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (383,51,null,'S006','T0017');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (384,93,null,'S003','T0033');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (385,54,null,'S006','T0001');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (386,60,null,'S001','T0047');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (387,58,null,'S004','T0003');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (388,50,null,'S003','T0016');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (389,59,null,'S004','T0055');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (390,51,null,'S001','T0022');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (391,62,null,'S004','T0095');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (392,79,null,'S004','T0006');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (393,90,null,'S001','T0076');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (394,69,null,'S006','T0092');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (395,52,null,'S006','T0052');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (396,70,null,'S005','T0015');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (397,67,null,'S005','T0059');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (398,77,null,'S003','T0062');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (399,59,null,'S005','T0076');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (400,93,null,'S005','T0065');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (401,56,null,'S002','T0063');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (402,90,null,'S005','T0047');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (403,77,null,'S005','T0039');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (404,51,null,'S003','T0096');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (405,76,null,'S001','T0071');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (406,62,null,'S005','T0029');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (407,64,null,'S002','T0061');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (408,69,null,'S006','T0053');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (409,61,null,'S004','T0049');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (410,72,null,'S004','T0088');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (411,54,null,'S006','T0087');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (412,91,null,'S004','T0092');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (413,71,null,'S002','T0097');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (414,73,null,'S001','T0044');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (415,75,null,'S005','T0062');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (416,59,null,'S001','T0012');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (417,50,null,'S003','T0099');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (418,77,null,'S004','T0080');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (419,50,null,'S005','T0030');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (420,94,null,'S005','T0058');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (421,69,null,'S001','T0049');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (422,81,null,'S003','T0038');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (423,75,null,'S005','T0052');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (424,90,null,'S001','T0054');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (425,80,null,'S005','T0083');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (426,57,null,'S004','T0011');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (427,81,null,'S005','T0078');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (428,81,null,'S006','T0081');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (429,54,null,'S005','T0009');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (430,72,null,'S001','T0042');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (431,87,null,'S005','T0084');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (432,86,null,'S002','T0073');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (433,52,null,'S003','T0012');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (434,85,null,'S006','T0083');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (435,91,null,'S001','T0026');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (436,96,null,'S001','T0014');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (437,64,null,'S002','T0045');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (438,90,null,'S003','T0056');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (439,71,null,'S002','T0023');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (440,76,null,'S003','T0069');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (441,93,null,'S001','T0084');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (442,73,null,'S005','T0005');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (443,100,null,'S005','T0096');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (445,60,null,'S005','T0045');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (446,76,null,'S003','T0066');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (448,95,null,'S002','T0057');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (449,59,null,'S005','T0028');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (451,54,null,'S004','T0073');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (452,100,null,'S005','T0014');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (453,56,null,'S001','T0023');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (455,91,null,'S002','T0079');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (456,89,null,'S004','T0091');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (458,53,null,'S004','T0059');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (459,69,null,'S005','T0001');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (461,84,null,'S003','T0040');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (462,82,null,'S006','T0037');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (464,68,null,'S005','T0008');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (465,87,null,'S006','T0065');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (467,81,null,'S001','T0088');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (468,66,null,'S002','T0010');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (470,92,null,'S004','T0041');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (471,71,null,'S003','T0063');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (472,99,null,'S002','T0031');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (474,77,null,'S006','T0091');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (475,56,null,'S006','T0084');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (477,97,null,'S001','T0032');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (478,80,null,'S006','T0057');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (480,87,null,'S005','T0011');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (481,66,null,'S006','T0024');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (483,71,null,'S006','T0089');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (484,72,null,'S006','T0098');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (486,92,null,'S002','T0041');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (487,100,null,'S006','T0019');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (489,96,null,'S005','T0100');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (490,64,null,'S006','T0046');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (491,51,null,'S003','T0005');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (493,80,null,'S003','T0014');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (494,81,null,'S005','T0057');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (496,98,null,'S004','T0079');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (497,60,null,'S002','T0034');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (499,56,null,'S005','T0034');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (500,58,null,'S005','T0099');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (502,99,null,'S003','T0036');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (503,93,null,'S002','T0035');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (505,59,null,'S004','T0093');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (506,79,null,'S005','T0033');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (508,97,null,'S001','T0091');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (509,58,null,'S004','T0086');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (510,98,null,'S004','T0069');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (512,90,null,'S004','T0039');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (513,56,null,'S006','T0096');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (515,95,null,'S002','T0016');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (516,82,null,'S003','T0015');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (518,82,null,'S001','T0099');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (519,96,null,'S002','T0024');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (521,95,null,'S001','T0093');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (522,82,null,'S004','T0071');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (524,75,null,'S001','T0051');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (525,83,null,'S004','T0014');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (527,89,null,'S003','T0013');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (528,75,null,'S002','T0040');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (529,76,null,'S002','T0088');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (531,52,null,'S006','T0055');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (532,91,null,'S004','T0072');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (534,62,null,'S004','T0084');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (535,93,null,'S004','T0067');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (537,61,null,'S006','T0058');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (538,66,null,'S004','T0047');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (540,100,null,'S004','T0090');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (541,63,null,'S004','T0025');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (543,70,null,'S002','T0014');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (544,82,null,'S005','T0060');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (546,63,null,'S004','T0061');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (548,95,null,'S006','T0062');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (550,76,null,'S005','T0048');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (551,52,null,'S001','T0005');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (554,54,null,'S001','T0025');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (556,87,null,'S006','T0080');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (559,50,null,'S004','T0026');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (560,95,null,'S001','T0007');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (563,76,null,'S006','T0031');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (565,63,null,'S006','T0035');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (566,88,null,'S004','T0045');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (569,82,null,'S004','T0046');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (570,83,null,'S006','T0085');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (573,84,null,'S003','T0018');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (575,69,null,'S003','T0003');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (578,69,null,'S005','T0095');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (579,85,null,'S003','T0078');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (581,99,null,'S003','T0004');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (584,77,null,'S006','T0010');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (585,78,null,'S005','T0090');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (588,50,null,'S005','T0064');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (589,89,null,'S003','T0082');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (592,58,null,'S002','T0090');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (594,79,null,'S005','T0082');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (595,57,null,'S001','T0050');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (598,72,null,'S003','T0077');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (600,86,null,'S002','T0066');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (140,72,null,'S003','T0054');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (143,90,null,'S005','T0004');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (146,61,null,'S006','T0003');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (149,61,null,'S003','T0079');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (152,54,null,'S002','T0086');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (156,85,null,'S003','T0002');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (159,57,null,'S006','T0045');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (162,74,null,'S004','T0035');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (165,51,null,'S003','T0024');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (168,56,null,'S004','T0005');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (171,76,null,'S004','T0077');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (175,54,null,'S005','T0031');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (178,67,null,'S003','T0072');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (181,52,null,'S004','T0054');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (184,74,null,'S004','T0038');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (187,54,null,'S002','T0094');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (190,77,null,'S004','T0096');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (194,74,null,'S005','T0042');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (197,59,null,'S005','T0013');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (200,72,null,'S003','T0035');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (203,58,null,'S003','T0098');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (206,63,null,'S003','T0037');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (209,63,null,'S005','T0088');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (212,66,null,'S001','T0001');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (216,95,null,'S005','T0049');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (219,80,null,'S002','T0011');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (222,79,null,'S003','T0041');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (225,82,null,'S005','T0097');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (228,100,null,'S002','T0072');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (231,58,null,'S003','T0026');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (235,68,null,'S005','T0074');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (238,91,null,'S003','T0059');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (241,68,null,'S003','T0039');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (244,86,null,'S002','T0053');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (247,51,null,'S001','T0009');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (250,65,null,'S001','T0068');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (254,54,null,'S005','T0019');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (257,52,null,'S006','T0090');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (260,83,null,'S004','T0098');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (263,66,null,'S006','T0044');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (266,58,null,'S001','T0039');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (269,70,null,'S001','T0064');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (273,53,null,'S006','T0005');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (276,63,null,'S001','T0036');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (279,86,null,'S002','T0036');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (282,84,null,'S001','T0087');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (285,52,null,'S004','T0031');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (288,90,null,'S004','T0010');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (292,77,null,'S002','T0074');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (295,73,null,'S002','T0007');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (298,76,null,'S005','T0017');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (301,66,null,'S002','T0091');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (304,100,null,'S001','T0092');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (444,85,null,'S002','T0033');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (447,92,null,'S001','T0011');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (450,77,null,'S003','T0092');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (454,76,null,'S001','T0017');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (457,58,null,'S001','T0046');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (460,54,null,'S001','T0043');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (463,71,null,'S003','T0009');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (466,86,null,'S003','T0086');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (469,73,null,'S002','T0038');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (473,91,null,'S005','T0041');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (476,70,null,'S005','T0072');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (479,74,null,'S005','T0046');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (482,51,null,'S002','T0067');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (485,59,null,'S001','T0070');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (488,90,null,'S001','T0008');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (492,91,null,'S004','T0021');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (495,96,null,'S002','T0020');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (498,63,null,'S001','T0081');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (501,83,null,'S004','T0034');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (504,99,null,'S006','T0011');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (507,55,null,'S003','T0071');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (511,73,null,'S002','T0021');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (514,72,null,'S003','T0075');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (517,95,null,'S005','T0081');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (520,58,null,'S003','T0097');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (523,52,null,'S005','T0067');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (526,65,null,'S001','T0095');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (530,74,null,'S006','T0060');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (533,75,null,'S006','T0004');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (536,79,null,'S002','T0062');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (539,87,null,'S005','T0007');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (542,74,null,'S003','T0031');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (545,52,null,'S002','T0046');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (549,61,null,'S002','T0025');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (552,54,null,'S001','T0077');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (555,100,null,'S004','T0066');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (558,97,null,'S005','T0050');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (561,70,null,'S006','T0049');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (564,78,null,'S005','T0085');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (568,53,null,'S005','T0051');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (571,82,null,'S004','T0100');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (574,98,null,'S004','T0037');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (577,84,null,'S003','T0093');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (580,57,null,'S006','T0064');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (583,64,null,'S002','T0047');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (587,95,null,'S002','T0044');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (590,95,null,'S003','T0053');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (593,89,null,'S002','T0083');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (596,61,null,'S003','T0046');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (599,62,null,'S001','T0052');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (246,92,null,'S003','T0045');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (252,98,null,'S001','T0003');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (256,64,null,'S003','T0028');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (261,67,null,'S005','T0073');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (267,74,null,'S002','T0070');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (271,63,null,'S004','T0022');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (275,98,null,'S001','T0083');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (281,75,null,'S006','T0099');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (286,73,null,'S005','T0093');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (290,95,null,'S003','T0060');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (296,66,null,'S004','T0029');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (300,71,null,'S002','T0022');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (305,89,null,'S002','T0098');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (547,54,null,'S006','T0067');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (553,55,null,'S006','T0029');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (557,76,null,'S003','T0058');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (562,90,null,'S001','T0013');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (567,96,null,'S003','T0061');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (572,96,null,'S001','T0056');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (576,87,null,'S003','T0088');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (582,83,null,'S003','T0020');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (586,81,null,'S001','T0089');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (591,50,null,'S005','T0035');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (597,81,null,'S006','T0009');
Insert into TBL_SCORE (S_ID,S_SCORE,S_REM,S_SUBJECT,S_STD) values (137,74,null,'S006','T0026');
REM INSERTING into TBL_SUBJECT
SET DEFINE OFF;
Insert into TBL_SUBJECT (SB_CODE,SB_NAME,SB_PRO) values ('S001','과학','홍길동');
Insert into TBL_SUBJECT (SB_CODE,SB_NAME,SB_PRO) values ('S002','수학','성춘향');
Insert into TBL_SUBJECT (SB_CODE,SB_NAME,SB_PRO) values ('S003','국어','허균');
Insert into TBL_SUBJECT (SB_CODE,SB_NAME,SB_PRO) values ('S004','국사','김부식');
Insert into TBL_SUBJECT (SB_CODE,SB_NAME,SB_PRO) values ('S005','미술','김홍도');
Insert into TBL_SUBJECT (SB_CODE,SB_NAME,SB_PRO) values ('S006','영어','다니엘헤니');
REM INSERTING into TBL_DEPT
SET DEFINE OFF;
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0001','컴퓨터공학',null,'062-720-1111');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0002','전자계산학',null,'062-720-1112');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0003','전기공학',null,'062-720-1113');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0004','경영학',null,'062-720-1114');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0005','법학',null,'062-720-1115');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0006','의학',null,'062-720-1116');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0007','정치외교',null,'062-720-1117');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0008','연극영화',null,'062-720-1118');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0009','영어영문',null,'062-720-1119');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0010','일어일문',null,'062-720-1120');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0011','중어중문',null,'062-720-1121');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0012','국어국문',null,'062-720-1122');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0013','유전공학',null,'062-720-1123');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0014','수의학',null,'062-720-1124');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0015','간호학',null,'062-720-1125');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0016','호텔경영',null,'062-720-1126');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0017','경제학',null,'062-720-1127');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0018','동계학',null,'062-720-1128');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0019','정보통신',null,'062-720-1129');
Insert into TBL_DEPT (D_NUM,D_NAME,D_PRO,D_TEL) values ('D0020','물리학',null,'062-720-1130');
REM INSERTING into TBL_STUDENT
SET DEFINE OFF;
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0001','옹효성','010-111-1111','월요일',1,'D0007');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0002','개원훈','010-111-1112','화요일',1,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0003','은채혁','010-111-1113','수요일',1,'D0004');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0004','전동원','010-111-1114','목요일',3,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0005','삼윤후','010-111-1115','금요일',2,'D0009');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0006','낭시우','010-111-1116','토요일',1,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0007','사원호','010-111-1117','일요일',3,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0008','방채호','010-111-1118','월요일',2,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0009','제동희','010-111-1119','화요일',1,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0010','여민국','010-111-1120','수요일',3,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0011','순대영','010-111-1121','목요일',4,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0012','돈재현','010-111-1122','금요일',1,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0013','두채훈','010-111-1123','토요일',4,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0014','초재현','010-111-1124','일요일',1,'D0003');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0015','담성민','010-111-1125','월요일',3,'D0004');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0016','명윤일','010-111-1126','화요일',4,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0017','해송혁','010-111-1127','수요일',2,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0018','강이찬','010-111-1128','목요일',4,'D0001');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0019','진동혜','010-111-1129','금요일',4,'D0001');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0020','유성율','010-111-1130','토요일',2,'D0007');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0021','두동환','010-111-1131','일요일',3,'D0003');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0022','허시후','010-111-1132','월요일',2,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0023','점재민','010-111-1133','화요일',4,'D0007');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0024','배세준','010-111-1134','수요일',4,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0025','진승일','010-111-1135','목요일',2,'D0001');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0026','이윤진','010-111-1136','금요일',2,'D0004');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0027','비현호','010-111-1137','토요일',3,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0028','하재찬','010-111-1138','일요일',1,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0029','야유신','010-111-1139','월요일',2,'D0008');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0030','춘대권','010-111-1140','화요일',1,'D0010');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0031','공동영','010-111-1141','수요일',3,'D0008');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0032','흥동현','010-111-1142','목요일',1,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0033','어민기','010-111-1143','금요일',4,'D0007');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0034','변재호','010-111-1144','토요일',2,'D0001');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0035','복준완','010-111-1145','일요일',4,'D0010');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0036','엄은진','010-111-1146','월요일',4,'D0010');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0037','진승환','010-111-1147','화요일',2,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0038','사원혁','010-111-1148','수요일',1,'D0004');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0039','진대윤','010-111-1149','목요일',2,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0040','빈성희','010-111-1150','금요일',2,'D0004');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0041','필영후','010-111-1151','토요일',1,'D0008');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0042','담장호','010-111-1152','일요일',3,'D0008');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0043','삼찬후','010-111-1153','월요일',3,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0044','지승현','010-111-1154','화요일',3,'D0010');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0045','옥원준','010-111-1155','수요일',2,'D0004');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0046','제민기','010-111-1156','목요일',2,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0047','방윤후','010-111-1157','금요일',1,'D0009');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0048','판한수','010-111-1158','토요일',1,'D0008');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0049','여동은','010-111-1159','일요일',4,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0050','석서훈','010-111-1160','월요일',1,'D0004');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0051','진승우','010-111-1161','화요일',4,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0052','함민서','010-111-1162','수요일',3,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0053','초원혁','010-111-1163','목요일',2,'D0009');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0054','소윤수','010-111-1164','금요일',4,'D0010');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0055','박수혁','010-111-1165','토요일',3,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0056','춘찬영','010-111-1166','일요일',2,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0057','은현준','010-111-1167','월요일',2,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0058','배채호','010-111-1168','화요일',4,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0059','나한율','010-111-1169','수요일',4,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0060','경시현','010-111-1170','목요일',4,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0061','아동은','010-111-1171','금요일',1,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0062','기원호','010-111-1172','토요일',1,'D0008');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0063','단수혁','010-111-1173','일요일',1,'D0004');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0064','춘인규','010-111-1174','월요일',1,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0065','문은진','010-111-1175','화요일',2,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0066','운윤태','010-111-1176','수요일',1,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0067','원성빈','010-111-1177','목요일',1,'D0003');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0068','모재원','010-111-1178','금요일',1,'D0004');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0069','독고예준','010-111-1179','토요일',3,'D0007');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0070','유준호','010-111-1180','일요일',1,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0071','유민국','010-111-1181','월요일',4,'D0009');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0072','갈한수','010-111-1182','화요일',3,'D0007');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0073','기은성','010-111-1183','수요일',3,'D0008');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0074','연연재','010-111-1184','목요일',1,'D0010');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0075','최장현','010-111-1185','금요일',2,'D0007');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0076','뇌성수','010-111-1186','토요일',3,'D0003');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0077','기대연','010-111-1187','일요일',4,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0078','남동예','010-111-1188','월요일',3,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0079','성성율','010-111-1189','화요일',2,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0080','황원혁','010-111-1190','수요일',4,'D0009');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0081','내세원','010-111-1191','목요일',1,'D0010');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0082','제갈동연','010-111-1192','금요일',1,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0083','양은성','010-111-1193','토요일',3,'D0008');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0084','제영후','010-111-1194','일요일',3,'D0001');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0085','초시민','010-111-1195','월요일',2,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0086','사성준','010-111-1196','화요일',1,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0087','평윤섭','010-111-1197','수요일',1,'D0003');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0088','소대권','010-111-1198','목요일',2,'D0010');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0089','피태영','010-111-1199','금요일',3,'D0003');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0090','신찬영','010-111-1200','토요일',3,'D0001');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0091','옥채훈','010-111-1201','일요일',2,'D0002');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0092','복재민','010-111-1202','월요일',1,'D0001');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0093','돈송혁','010-111-1203','화요일',3,'D0001');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0094','진대원','010-111-1204','수요일',4,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0095','풍동해','010-111-1205','목요일',1,'D0008');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0096','담원준','010-111-1206','금요일',3,'D0006');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0097','제유상','010-111-1207','토요일',1,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0098','양동인','010-111-1208','일요일',2,'D0009');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0099','심장호','010-111-1209','월요일',4,'D0005');
Insert into TBL_STUDENT (ST_NUM,ST_NAME,ST_TEL,ST_ADDR,ST_GRADE,ST_DEPT) values ('T0100','흥은성','010-111-1210','화요일',2,'D0009');
--------------------------------------------------------
--  DDL for Index PK_SCORE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SCORE" ON "TBL_SCORE" ("S_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007037
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007037" ON "TBL_SUBJECT" ("SB_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007043
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007043" ON "TBL_DEPT" ("D_NUM") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007041
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007041" ON "TBL_STUDENT" ("ST_NUM") 
  ;
--------------------------------------------------------
--  Constraints for Table TBL_SCORE
--------------------------------------------------------

  ALTER TABLE "TBL_SCORE" ADD CONSTRAINT "PK_SCORE" PRIMARY KEY ("S_ID") ENABLE;
  ALTER TABLE "TBL_SCORE" MODIFY ("S_SCORE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_SUBJECT
--------------------------------------------------------

  ALTER TABLE "TBL_SUBJECT" ADD PRIMARY KEY ("SB_CODE") ENABLE;
  ALTER TABLE "TBL_SUBJECT" MODIFY ("SB_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_DEPT
--------------------------------------------------------

  ALTER TABLE "TBL_DEPT" ADD PRIMARY KEY ("D_NUM") ENABLE;
  ALTER TABLE "TBL_DEPT" MODIFY ("D_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_STUDENT
--------------------------------------------------------

  ALTER TABLE "TBL_STUDENT" ADD PRIMARY KEY ("ST_NUM") ENABLE;
  ALTER TABLE "TBL_STUDENT" MODIFY ("ST_DEPT" NOT NULL ENABLE);
  ALTER TABLE "TBL_STUDENT" MODIFY ("ST_GRADE" NOT NULL ENABLE);
  ALTER TABLE "TBL_STUDENT" MODIFY ("ST_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TBL_SCORE
--------------------------------------------------------

  ALTER TABLE "TBL_SCORE" ADD CONSTRAINT "FK_SCORE_STUDENT" FOREIGN KEY ("S_STD")
	  REFERENCES "TBL_STUDENT" ("ST_NUM") ENABLE;
  ALTER TABLE "TBL_SCORE" ADD CONSTRAINT "FK_SCORE_SUBJECT" FOREIGN KEY ("S_SUBJECT")
	  REFERENCES "TBL_SUBJECT" ("SB_CODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_STUDENT
--------------------------------------------------------

  ALTER TABLE "TBL_STUDENT" ADD CONSTRAINT "FK_STUDENT_DEPT" FOREIGN KEY ("ST_DEPT")
	  REFERENCES "TBL_DEPT" ("D_NUM") ENABLE;
