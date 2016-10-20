SET DEFINE OFF;
ALTER TABLE AFW_12_INSTA_REGLE_APROB ADD (
  CONSTRAINT AFW_12_INSTA_REGLE_APROB_CK1
  CHECK ((REF_REGLE_APROB IS NOT NULL AND REF_EVOLT_STAT IS NULL)
         OR (REF_REGLE_APROB IS NULL AND REF_EVOLT_STAT IS NOT NULL)
         OR (REF_REGLE_APROB IS NULL AND REF_EVOLT_STAT IS NULL))
  ENABLE VALIDATE)
/