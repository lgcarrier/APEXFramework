SET DEFINE OFF;
CREATE TABLE AFW_21_PLUGN_MENU
(
  SEQNC               NUMBER(10),
  CODE                VARCHAR2(23 BYTE),
  DATE_CREAT          DATE,
  UTILS_CREAT         VARCHAR2(123 BYTE),
  DATE_MODFC          DATE,
  UTILS_MODFC         VARCHAR2(123 BYTE),
  DNR_REF_PRODT       NUMBER(10),
  REF_DV_TYPE_MENU    NUMBER(10),
  LARGR_REGN_MENU     NUMBER(4),
  HAUTR_REGN_MENU     NUMBER(4),
  REF_DV_ORIEN_MENU   NUMBER(10),
  REF_DV_COULR_THEME  NUMBER(10),
  REF_DV_COULR_PRINC  NUMBER(10),
  REF_MENU            NUMBER(10),
  REF_DV_FORMT_MENU   NUMBER(10),
  REF_PRODT           NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/