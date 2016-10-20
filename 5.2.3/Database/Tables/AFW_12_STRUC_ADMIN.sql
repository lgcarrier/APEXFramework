SET DEFINE OFF;
CREATE TABLE AFW_12_STRUC_ADMIN
(
  SEQNC           NUMBER(10),
  NOM             VARCHAR2(60 BYTE),
  INDIC_DEFT      VARCHAR2(1 BYTE),
  DATE_CREAT      DATE,
  UTILS_CREAT     VARCHAR2(123 BYTE),
  DATE_MODFC      DATE,
  UTILS_MODFC     VARCHAR2(123 BYTE),
  REF_TYPE_STRUC  NUMBER(10),
  REF_RESPN       NUMBER(10),
  DEBUT_EFECT     DATE,
  FIN_EFECT       DATE,
  REF_DOMN        NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/