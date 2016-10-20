SET DEFINE OFF;
CREATE TABLE AFW_19_CLE
(
  SEQNC            NUMBER(10),
  REF_LANG         NUMBER(10),
  INDIC_SHIFT      VARCHAR2(1 BYTE)             DEFAULT 'N',
  INDIC_ALT        VARCHAR2(1 BYTE)             DEFAULT 'N',
  INDIC_CTRL       VARCHAR2(1 BYTE)             DEFAULT 'N',
  INDIC_INTER      VARCHAR2(1 BYTE)             DEFAULT 'N',
  DATE_CREAT       DATE,
  UTILS_CREAT      VARCHAR2(123 BYTE),
  DATE_MODFC       DATE,
  UTILS_MODFC      VARCHAR2(123 BYTE),
  CODE_KEYPR       NUMBER(4),
  CODE_KEYDW       NUMBER(4),
  REF_DISPN_FONCT  NUMBER(10),
  INDIC_ACTIF      VARCHAR2(1 BYTE)             DEFAULT 'O'
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/