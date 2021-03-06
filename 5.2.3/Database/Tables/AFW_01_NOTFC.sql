SET DEFINE OFF;
CREATE TABLE AFW_01_NOTFC
(
  SEQNC                 NUMBER(10),
  CODE                  VARCHAR2(23 BYTE),
  NOM                   VARCHAR2(60 BYTE),
  DESCR                 VARCHAR2(4000 BYTE),
  INDEN_MESG            VARCHAR2(10 BYTE),
  TITRE_MESG            VARCHAR2(60 BYTE),
  MESG                  VARCHAR2(4000 BYTE),
  REF_MODL_AFICH_NOTFC  NUMBER(10),
  INDIC_SPECF           VARCHAR2(1 BYTE)        DEFAULT 'O',
  INDIC_AFICH_UNIQ      VARCHAR2(1 BYTE)        DEFAULT 'O',
  REF_DOMN              NUMBER(10),
  DATE_CREAT            DATE,
  UTILS_CREAT           VARCHAR2(123 BYTE),
  DATE_MODFC            DATE,
  UTILS_MODFC           VARCHAR2(123 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
