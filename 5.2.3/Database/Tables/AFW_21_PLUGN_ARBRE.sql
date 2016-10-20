SET DEFINE OFF;
CREATE TABLE AFW_21_PLUGN_ARBRE
(
  SEQNC                           NUMBER(10),
  ENONC_PRE_REQT                  VARCHAR2(4000 BYTE),
  NOM_TABLE                       VARCHAR2(30 BYTE),
  COLN_TITRE                      VARCHAR2(30 BYTE),
  COLN_TYPE                       VARCHAR2(30 BYTE) DEFAULT NULL,
  COLN_VALR                       VARCHAR2(30 BYTE),
  COLN_AIDE_INSTA                 VARCHAR2(30 BYTE),
  COLN_LIEN                       VARCHAR2(400 BYTE),
  COLN_ID                         VARCHAR2(30 BYTE),
  COLN_ID_PARNT                   VARCHAR2(30 BYTE),
  ENONC_CONDT                     VARCHAR2(400 BYTE),
  ENONC_CONDT_COMNC_PAR           VARCHAR2(400 BYTE),
  ENONC_TRIER_PAR                 VARCHAR2(400 BYTE),
  DATE_CREAT                      DATE,
  UTILS_CREAT                     VARCHAR2(123 BYTE),
  DATE_MODFC                      DATE,
  UTILS_MODFC                     VARCHAR2(123 BYTE),
  INDIC_RENMR                     VARCHAR2(1 BYTE) DEFAULT 'N',
  INDIC_DEPLC                     VARCHAR2(1 BYTE) DEFAULT 'N',
  COLN_TITRE_AIDE_INSTA           VARCHAR2(30 BYTE),
  LARGR_REGN_ARBRE                NUMBER(10)    DEFAULT 256,
  HAUTR_REGN_ARBRE                NUMBER(10)    DEFAULT 768,
  REF_PLUGN_ARBRE_NOEUD           NUMBER(10),
  INDIC_COMNC_PAR_RACN            VARCHAR2(1 BYTE) DEFAULT 'O',
  IMAGE_SPRIT                     VARCHAR2(400 BYTE),
  TYPE_ICONE_NOEUD                VARCHAR2(5 BYTE) DEFAULT 'RESRC',
  REF_FORMT_RESRC                 NUMBER(10),
  REF_RESRC_COMPS                 NUMBER(10),
  OBTEN_JSON_ARBRE_NOMBR_NIV      NUMBER(10)    DEFAULT 2,
  OBTEN_JSON_NOEUD_NOMBR_NIV      NUMBER(10)    DEFAULT 1,
  MODE_CACHE                      VARCHAR2(23 BYTE) DEFAULT 'SESN',
  DNR_REF_PRODT                   NUMBER(10),
  CODE                            VARCHAR2(23 BYTE),
  INDIC_CHARG_PROGR               VARCHAR2(1 BYTE) DEFAULT 'O',
  INDIC_FLECH_AIDE_INSTA          VARCHAR2(1 BYTE) DEFAULT 'N',
  REF_DV_CURSR_AIDE_INSTA         NUMBER(10),
  NOM_PROCD_GLISR_ELEMN_ARBRE     VARCHAR2(92 BYTE),
  NOM_PROCD_DEPSR_ELEMN_ARBRE     VARCHAR2(92 BYTE),
  INDIC_COMNC_PAR_COLN_PARNT_NUL  VARCHAR2(1 BYTE) DEFAULT 'O',
  REF_PRODT                       NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
