SET DEFINE OFF;
CREATE TABLE AFW_12_INSTA_REGLE_APROB
(
  SEQNC                       NUMBER(10),
  REF_INSTA_PROCS_APROB       NUMBER(10),
  REF_REGLE_APROB             NUMBER(10),
  REF_EVOLT_STAT              NUMBER(10),
  DATE_APROB                  DATE,
  COMNT_APROB                 VARCHAR2(4000 BYTE),
  UTILS_CREAT                 VARCHAR2(123 BYTE),
  DATE_CREAT                  DATE,
  UTILS_MODFC                 VARCHAR2(123 BYTE),
  DATE_MODFC                  DATE,
  DNR_REF_DOMN                NUMBER(10),
  REF_INSTA_PROCS_APROB_STAT  NUMBER(10)
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/