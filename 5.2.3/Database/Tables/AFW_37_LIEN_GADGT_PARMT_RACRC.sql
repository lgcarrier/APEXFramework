SET DEFINE OFF;
CREATE TABLE AFW_37_LIEN_GADGT_PARMT_RACRC
(
  SEQNC                  NUMBER(10),
  REF_GADGT_PARMT        NUMBER(10),
  REF_GADGT_PARMT_RACRC  NUMBER(10),
  NOM                    VARCHAR2(50 BYTE),
  FORML_DON              VARCHAR2(4000 BYTE),
  DESCR                  VARCHAR2(4000 BYTE),
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
