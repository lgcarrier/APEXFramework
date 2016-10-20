SET DEFINE OFF;
CREATE TABLE AFW_12_STRUC_APLIC_SUIVI
(
  SEQNC              NUMBER(10),
  REF_STRUC_APLIC    NUMBER(10),
  REF_SUIVI          NUMBER(10),
  DATE_CREAT         DATE,
  UTILS_CREAT        VARCHAR2(123 BYTE),
  DATE_MODFC         DATE,
  UTILS_MODFC        VARCHAR2(123 BYTE),
  NOM_PERSN          VARCHAR2(60 BYTE),
  INDIC_CREAT_INITL  VARCHAR2(1 BYTE),
  SEQNC_PRESN        NUMBER(4),
  REF_SUCRS_IMPLA    NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
