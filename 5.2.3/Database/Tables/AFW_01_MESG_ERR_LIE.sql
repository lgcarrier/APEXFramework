SET DEFINE OFF;
CREATE TABLE AFW_01_MESG_ERR_LIE
(
  SEQNC               NUMBER(10),
  NOM_TABLE           VARCHAR2(30 BYTE),
  NOM_COLN            VARCHAR2(30 BYTE),
  NOM_CONTR           VARCHAR2(30 BYTE),
  PAGE                NUMBER(10),
  COMNT               VARCHAR2(4000 BYTE),
  REF_PRODT           NUMBER(10),
  DATE_CREAT          DATE,
  UTILS_CREAT         VARCHAR2(123 BYTE),
  DATE_MODFC          DATE,
  UTILS_MODFC         VARCHAR2(123 BYTE),
  TYPE_LIAIS          NUMBER(1),
  REF_MESG            NUMBER(10),
  DNR_REF_PRODT       NUMBER(10),
  REF_CODE_ERR_ORACL  NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/