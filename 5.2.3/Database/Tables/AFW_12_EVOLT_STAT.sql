SET DEFINE OFF;
CREATE TABLE AFW_12_EVOLT_STAT
(
  SEQNC           NUMBER(10),
  REF_STAT        NUMBER(10),
  REF_STAT_EVOLT  NUMBER(10),
  DATE_CREAT      DATE,
  UTILS_CREAT     VARCHAR2(123 BYTE),
  DATE_MODFC      DATE,
  UTILS_MODFC     VARCHAR2(123 BYTE),
  INDIC_CODE      VARCHAR2(1 BYTE),
  DNR_REF_PRODT   NUMBER(10),
  DNR_REF_DOMN    NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
