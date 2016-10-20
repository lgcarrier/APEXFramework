SET DEFINE OFF;
CREATE TABLE AFW_13_PAGE_IR_COLN
(
  SEQNC          NUMBER(10),
  ORDRE_AFICH    NUMBER(3),
  LIBL           VARCHAR2(4000 BYTE),
  DATE_CREAT     DATE,
  UTILS_CREAT    VARCHAR2(123 BYTE),
  DATE_MODFC     DATE,
  UTILS_MODFC    VARCHAR2(123 BYTE),
  COLN_TABLE     VARCHAR2(30 BYTE),
  REF_PAGE_IR    NUMBER(10),
  ID_APEX        NUMBER,
  LARGR          NUMBER(5,2),
  TYPE_LARGR     VARCHAR2(5 BYTE),
  INDIC_EXPRT    VARCHAR2(1 BYTE)               DEFAULT 'O',
  REF_MESG_AIDE  NUMBER(10),
  DNR_REF_APLIC  NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
