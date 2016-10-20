SET DEFINE OFF;
CREATE TABLE AFW_01_TYPE_COMNC
(
  SEQNC        NUMBER(10),
  CODE         VARCHAR2(23 BYTE),
  NOM          VARCHAR2(60 BYTE),
  DATE_CREAT   DATE,
  UTILS_CREAT  VARCHAR2(123 BYTE),
  DATE_MODFC   DATE,
  UTILS_MODFC  VARCHAR2(123 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
