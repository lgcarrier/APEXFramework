SET DEFINE OFF;
CREATE TABLE AFW_03_LIEN_CLAS_INTER_UTILS
(
  SEQNC             NUMBER(10),
  REF_CLAS_INTER    NUMBER(10),
  REF_UTILS         NUMBER(10),
  DATE_DEBUT_EFECT  DATE,
  DATE_FIN_EFECT    DATE,
  DATE_CREAT        DATE,
  UTILS_CREAT       VARCHAR2(123 BYTE),
  DATE_MODFC        DATE,
  UTILS_MODFC       VARCHAR2(123 BYTE),
  REF_GROUP_UTILS   NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
