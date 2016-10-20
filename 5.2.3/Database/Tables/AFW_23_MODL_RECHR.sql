SET DEFINE OFF;
CREATE TABLE AFW_23_MODL_RECHR
(
  SEQNC          NUMBER(10),
  CODE           VARCHAR2(23 BYTE),
  REF_DOMN       NUMBER(10),
  NOM            VARCHAR2(60 BYTE),
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