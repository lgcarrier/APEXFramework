SET DEFINE OFF;
CREATE TABLE AFW_30_EFORT_ITEM
(
  SEQNC                 NUMBER(10),
  REF_ITEM_CARNT_SPRIN  NUMBER(10),
  REF_UTILS             NUMBER(10),
  COMNT                 VARCHAR2(4000 BYTE),
  DATE_EFORT            DATE,
  VALR                  NUMBER(5,2),
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
