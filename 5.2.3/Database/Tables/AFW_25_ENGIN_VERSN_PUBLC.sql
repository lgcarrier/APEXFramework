SET DEFINE OFF;
CREATE TABLE AFW_25_ENGIN_VERSN_PUBLC
(
  SEQNC            NUMBER(10),
  DATE_CREAT       DATE,
  UTILS_CREAT      VARCHAR2(123 BYTE),
  DATE_MODFC       DATE,
  UTILS_MODFC      VARCHAR2(123 BYTE),
  REF_VERSN_PUBLC  NUMBER(10),
  REF_ENGIN        NUMBER(10),
  IDEN_ACCES       VARCHAR2(60 BYTE),
  PDF_FUSN         BLOB,
  DNR_REF_PRODT    NUMBER(10),
  HTML_BASE        CLOB
)
LOB (PDF_FUSN) STORE AS BASICFILE (
  TABLESPACE  APEXFRAMEWORK
  ENABLE      STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING)
LOB (HTML_BASE) STORE AS BASICFILE (
  TABLESPACE  APEXFRAMEWORK
  ENABLE      STORAGE IN ROW
  CHUNK       8192
  RETENTION
  NOCACHE
  LOGGING)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
