SET DEFINE OFF;
ALTER TABLE AFW_23_DETL_RESLT_RECHR ADD (
  CONSTRAINT AFW_23_DETL_RESLT_RECHR_UK1
  UNIQUE (REF_RECHR, REF_ENONC_RECHR, REF_DETL_APLIC_MODL_RECHR, REF_SEQNC_STRUC_APLIC)
  ENABLE VALIDATE)
/