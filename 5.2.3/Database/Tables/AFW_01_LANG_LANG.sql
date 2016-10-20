SET DEFINE OFF;
CREATE TABLE AFW_01_LANG_LANG
(
  SEQNC           NUMBER(10),
  REF_LANG        NUMBER(10),
  NOM             VARCHAR2(200 BYTE),
  DATE_CREAT      DATE,
  UTILS_CREAT     VARCHAR2(123 BYTE),
  DATE_MODFC      DATE,
  UTILS_MODFC     VARCHAR2(123 BYTE),
  REF_LANG_CIBLE  NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
