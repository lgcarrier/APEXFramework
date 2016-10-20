SET DEFINE OFF;
CREATE TABLE AFW_14_FORMT
(
  SEQNC              NUMBER(10),
  LIBL               VARCHAR2(60 BYTE),
  DEFNT              VARCHAR2(60 BYTE),
  TYPE_DON           VARCHAR2(2 BYTE),
  DATE_CREAT         DATE,
  UTILS_CREAT        VARCHAR2(123 BYTE),
  DATE_MODFC         DATE,
  UTILS_MODFC        VARCHAR2(123 BYTE),
  REF_PRODT          NUMBER(10),
  INDIC_FORMT_ORCL   VARCHAR2(1 BYTE),
  INDIC_UNITE_INCLU  VARCHAR2(1 BYTE),
  DNR_REF_PRODT      NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
