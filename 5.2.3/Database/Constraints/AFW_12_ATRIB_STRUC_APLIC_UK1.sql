SET DEFINE OFF;
ALTER TABLE AFW_12_ATRIB_STRUC_APLIC ADD (
  CONSTRAINT AFW_12_ATRIB_STRUC_APLIC_UK1
  UNIQUE (NOM_COLN, REF_STRUC_APLIC)
  ENABLE VALIDATE)
/
