SET DEFINE OFF;
CREATE TABLE AFW_30_CARNT_PRODT
(
  SEQNC            NUMBER(10),
  REF_PRODT        NUMBER(10),
  DOCMN_REFRC      VARCHAR2(200 BYTE),
  REF_UTILS_RESPN  NUMBER(10),
  DATE_CREAT       DATE,
  UTILS_CREAT      VARCHAR2(123 BYTE),
  DATE_MODFC       DATE,
  UTILS_MODFC      VARCHAR2(123 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
