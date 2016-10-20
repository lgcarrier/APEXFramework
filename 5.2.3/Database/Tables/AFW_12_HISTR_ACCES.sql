SET DEFINE OFF;
CREATE TABLE AFW_12_HISTR_ACCES
(
  SEQNC              NUMBER(10),
  REF_UTILS          NUMBER(10),
  DATE_EVENM         DATE,
  REF_DV_TYPE_EVENM  NUMBER(10),
  DATE_CREAT         DATE,
  UTILS_CREAT        VARCHAR2(123 BYTE),
  DATE_MODFC         DATE,
  UTILS_MODFC        VARCHAR2(123 BYTE),
  ADRES_IP           VARCHAR2(15 BYTE),
  REF_UTILS_POUR     NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
