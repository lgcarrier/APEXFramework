SET DEFINE OFF;
CREATE TABLE AFW_13_LISTE_NAVGT
(
  SEQNC             NUMBER(10),
  REF_PAGE          NUMBER(10),
  LIBL              VARCHAR2(30 BYTE),
  PAGE              VARCHAR2(30 BYTE),
  SSPC              VARCHAR2(30 BYTE),
  SAPC              VARCHAR2(30 BYTE),
  SSPI              VARCHAR2(30 BYTE),
  SAPI              VARCHAR2(30 BYTE),
  DATE_CREAT        DATE,
  UTILS_CREAT       VARCHAR2(123 BYTE),
  DATE_MODFC        DATE,
  UTILS_MODFC       VARCHAR2(123 BYTE),
  ORDRE_PRESN       NUMBER(3)                   DEFAULT 1,
  CODE              VARCHAR2(23 BYTE),
  INDIC_REINT_SIDF  VARCHAR2(1 BYTE)            DEFAULT 'N',
  DNR_REF_APLIC     NUMBER(10),
  APLIC             VARCHAR2(30 BYTE),
  CSS_ICONE_BOOTS   VARCHAR2(400 BYTE),
  REF_DOMN          NUMBER(10),
  ID_REGN_APEX      NUMBER,
  SCPI              VARCHAR2(30 BYTE),
  DNR_REF_DOMN      NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
