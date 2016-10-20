SET DEFINE OFF;
CREATE TABLE AFW_11_PLUGN
(
  SEQNC        NUMBER(10),
  CODE_INTER   VARCHAR2(5 BYTE),
  NOM          VARCHAR2(200 BYTE),
  UTILS_CREAT  VARCHAR2(123 BYTE),
  DATE_MODFC   DATE,
  UTILS_MODFC  VARCHAR2(123 BYTE),
  DATE_CREAT   DATE,
  DESCR        VARCHAR2(4000 BYTE),
  REF_VERSN    NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
