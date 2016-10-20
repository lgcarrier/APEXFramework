SET DEFINE OFF;
CREATE TABLE AFW_13_PREFR
(
  SEQNC               NUMBER(10),
  CODE                VARCHAR2(23 BYTE),
  REF_DV_CONDT_UTILS  NUMBER(10),
  FORML_CONDT_UTILS   VARCHAR2(4000 BYTE),
  REF_DV_CONDT_SAUVG  NUMBER(10),
  FORML_CONDT_SAUVG   VARCHAR2(4000 BYTE),
  REF_DV_TYPE_INSTA   NUMBER(10),
  INDIC_CONTX         VARCHAR2(1 BYTE),
  REF_DV_VALR_INSTA   NUMBER(10),
  FORML_VALR_INSTA    VARCHAR2(4000 BYTE),
  DESCR_COMNT         VARCHAR2(4000 BYTE),
  REF_ITEM            NUMBER(10),
  DATE_CREAT          DATE,
  UTILS_CREAT         VARCHAR2(123 BYTE),
  DATE_MODFC          DATE,
  UTILS_MODFC         VARCHAR2(123 BYTE),
  DNR_REF_APLIC       NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
