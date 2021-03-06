SET DEFINE OFF;
CREATE TABLE AFW_13_OPERT_OPTIO
(
  SEQNC          NUMBER(10),
  REF_OPERT      NUMBER(10),
  CODE           VARCHAR2(23 BYTE),
  NOM            VARCHAR2(60 BYTE),
  DESCR          VARCHAR2(4000 BYTE),
  DNR_REF_PRODT  NUMBER(10),
  DATE_CREAT     DATE,
  UTILS_CREAT    VARCHAR2(123 BYTE),
  DATE_MODFC     DATE,
  UTILS_MODFC    VARCHAR2(123 BYTE),
  PREPN          NUMBER(3)                      DEFAULT NULL
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
