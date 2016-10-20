SET DEFINE OFF;
CREATE TABLE AFW_37_GADGT_CATGR
(
  SEQNC            NUMBER(10),
  REF_PRODT        NUMBER(10),
  REF_GADGT_CATGR  NUMBER(10),
  CODE             VARCHAR2(23 BYTE),
  NOM              VARCHAR2(250 BYTE),
  ORDRE_PRESN      NUMBER,
  DATE_CREAT       DATE,
  UTILS_CREAT      VARCHAR2(123 BYTE),
  DATE_MODFC       DATE,
  UTILS_MODFC      VARCHAR2(123 BYTE),
  DNR_REF_PRODT    NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/