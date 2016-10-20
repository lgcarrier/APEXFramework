SET DEFINE OFF;
CREATE TABLE AFW_12_DOMN
(
  SEQNC                           NUMBER(10),
  CODE                            VARCHAR2(30 BYTE),
  NOM                             VARCHAR2(60 BYTE),
  DESCR                           VARCHAR2(4000 BYTE),
  DATE_CREAT                      DATE,
  UTILS_CREAT                     VARCHAR2(123 BYTE),
  DATE_MODFC                      DATE,
  UTILS_MODFC                     VARCHAR2(123 BYTE),
  TYPE_TRAVL_DEFT                 NUMBER(10),
  REF_PROFL_COURL_NOTFC           NUMBER(10),
  REF_PROFL_SMS_NOTFC             NUMBER(10),
  REF_COMPT_AXIAT_DEFT            NUMBER(10),
  REF_MODL_RECHR_DEFT             NUMBER(10),
  PROCD_AUTHE_EXTER_AFW           VARCHAR2(92 BYTE),
  INDIC_DEMND_ACTIV_COMPT_UTILS   VARCHAR2(1 BYTE) DEFAULT 'N',
  PROCD_VALD_NIV_SECRT_MOT_PASSE  VARCHAR2(92 BYTE) DEFAULT 'afw_12_mot_passe_pkg.valdr_secrt_mot_passe',
  PROCD_APRES_DECNX               VARCHAR2(92 BYTE),
  PROCD_APRES_CONXN               VARCHAR2(92 BYTE),
  PROCD_OBTEN_INFOR_UTILS         VARCHAR2(92 BYTE),
  PROCD_AVANT_CONXN               VARCHAR2(92 BYTE),
  INDIC_AUTHE_COURL               VARCHAR2(1 BYTE) DEFAULT 'N'
)
LOGGING 
NOCOMPRESS 
NOCACHE
MONITORING
/
