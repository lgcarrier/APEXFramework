SET DEFINE OFF;
CREATE TABLE AFW_12_SCENR_NOTFC
(
  SEQNC          NUMBER(10),
  CODE           VARCHAR2(12 BYTE),
  NOM            VARCHAR2(200 BYTE),
  DESCR          VARCHAR2(4000 BYTE),
  UTILS_CREAT    VARCHAR2(123 BYTE),
  DATE_CREAT     DATE,
  UTILS_MODFC    VARCHAR2(123 BYTE),
  DATE_MODFC     DATE,
  REF_PRODT      NUMBER(10),
  DNR_REF_PRODT  NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/