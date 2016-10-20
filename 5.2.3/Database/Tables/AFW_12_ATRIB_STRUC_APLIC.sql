SET DEFINE OFF;
CREATE TABLE AFW_12_ATRIB_STRUC_APLIC
(
  SEQNC                  NUMBER(10),
  NOM_COLN               VARCHAR2(50 BYTE),
  NOM_FONCT              VARCHAR2(50 BYTE),
  REF_DV_NATR_INFOR      NUMBER(10),
  INDIC_VALID            VARCHAR2(1 BYTE)       DEFAULT 'O',
  REF_STRUC_APLIC        NUMBER(10),
  REF_ATRIB_STRUC_APLIC  NUMBER(10),
  INDIC_DESTN            VARCHAR2(1 BYTE)       DEFAULT 'N',
  DATE_CREAT             DATE,
  UTILS_CREAT            VARCHAR2(123 BYTE),
  DATE_MODFC             DATE,
  UTILS_MODFC            VARCHAR2(123 BYTE),
  DNR_REF_PRODT          NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
