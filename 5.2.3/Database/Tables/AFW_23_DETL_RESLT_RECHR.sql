SET DEFINE OFF;
CREATE TABLE AFW_23_DETL_RESLT_RECHR
(
  SEQNC                      NUMBER(10),
  REF_RECHR                  NUMBER(10),
  REF_ENONC_RECHR            NUMBER(10),
  UTILS_CREAT                VARCHAR2(123 BYTE),
  DATE_CREAT                 DATE,
  UTILS_MODFC                VARCHAR2(123 BYTE),
  DATE_MODFC                 DATE,
  REF_DETL_APLIC_MODL_RECHR  NUMBER(10),
  DNR_PERTN                  NUMBER(3),
  REF_SEQNC_STRUC_APLIC      NUMBER(10),
  REF_RESLT_RECHR            NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
