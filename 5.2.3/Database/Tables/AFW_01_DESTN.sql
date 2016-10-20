SET DEFINE OFF;
CREATE TABLE AFW_01_DESTN
(
  SEQNC                  NUMBER(10),
  DATE_CREAT             DATE,
  UTILS_CREAT            VARCHAR2(123 BYTE),
  DATE_MODFC             DATE,
  UTILS_MODFC            VARCHAR2(123 BYTE),
  REF_ATRIB_STRUC_APLIC  NUMBER(10),
  DESCR                  VARCHAR2(4000 BYTE),
  DNR_REF_PRODT          NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/