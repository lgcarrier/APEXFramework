SET DEFINE OFF;
CREATE TABLE AFW_25_VALR_ELEMN_CONFG
(
  SEQNC                  NUMBER(10),
  REF_ELEMN_CONFG_PUBLC  NUMBER(10),
  DATE_DEBUT_EFECT       DATE,
  DATE_FIN_EFECT         DATE,
  VALR_VARCH             VARCHAR2(4000 BYTE),
  VALR_DATE              DATE,
  VALR_NUMBR             NUMBER,
  DATE_CREAT             DATE,
  UTILS_CREAT            VARCHAR2(123 BYTE),
  DATE_MODFC             DATE,
  UTILS_MODFC            VARCHAR2(123 BYTE),
  REF_DOMN               NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
