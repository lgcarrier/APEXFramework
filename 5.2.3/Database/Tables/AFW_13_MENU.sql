SET DEFINE OFF;
CREATE TABLE AFW_13_MENU
(
  SEQNC          NUMBER(10),
  CODE           VARCHAR2(23 BYTE),
  NOM            VARCHAR2(60 BYTE),
  DESCR          VARCHAR2(2000 BYTE),
  DATE_CREAT     DATE,
  UTILS_CREAT    VARCHAR2(123 BYTE),
  DATE_MODFC     DATE,
  UTILS_MODFC    VARCHAR2(123 BYTE),
  REF_PRODT      NUMBER(10),
  DNR_REF_PRODT  NUMBER(10),
  RESRC_ADITN    VARCHAR2(4000 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
