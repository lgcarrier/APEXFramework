SET DEFINE OFF;
CREATE TABLE AFW_25_TRAVL
(
  SEQNC           NUMBER(10),
  REF_UTILS       NUMBER(10),
  INDIC_IMEDT     VARCHAR2(1 BYTE)              DEFAULT 'O',
  NOM             VARCHAR2(200 BYTE),
  DATE_CREAT      DATE,
  UTILS_CREAT     VARCHAR2(123 BYTE),
  DATE_MODFC      DATE,
  UTILS_MODFC     VARCHAR2(123 BYTE),
  REF_DOMN        NUMBER(10),
  REF_STAT        NUMBER(10),
  REF_TYPE_TRAVL  NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
