SET DEFINE OFF;
CREATE TABLE AFW_23_ENONC_RECHR
(
  SEQNC        NUMBER(10),
  REF_RECHR    NUMBER(10),
  MOT          VARCHAR2(100 BYTE),
  ORDRE_APART  NUMBER(3),
  UTILS_CREAT  VARCHAR2(123 BYTE),
  DATE_CREAT   DATE,
  UTILS_MODFC  VARCHAR2(123 BYTE),
  DATE_MODFC   DATE
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
