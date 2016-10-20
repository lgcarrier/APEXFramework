SET DEFINE OFF;
CREATE TABLE AFW_13_PAGE_PREFR_NAVGT
(
  SEQNC          NUMBER(10),
  REF_PAGE       NUMBER(10),
  REF_PAGE_IR    NUMBER(10),
  DATE_CREAT     DATE,
  UTILS_CREAT    VARCHAR2(123 BYTE),
  DATE_MODFC     DATE,
  UTILS_MODFC    VARCHAR2(123 BYTE),
  DNR_REF_APLIC  NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/