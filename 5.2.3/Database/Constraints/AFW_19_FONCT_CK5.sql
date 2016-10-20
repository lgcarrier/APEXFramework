SET DEFINE OFF;
ALTER TABLE AFW_19_FONCT ADD (
  CONSTRAINT AFW_19_FONCT_CK5
  CHECK ((REF_DV_TYPE_ATRIB5 is not null and VALR_DEFT_ATRIB5 is not null and
TITRE_ATRIB5 is not null) or
  (REF_DV_TYPE_ATRIB5 is null and VALR_DEFT_ATRIB5 is null and TITRE_ATRIB5 is
null))
  ENABLE VALIDATE)
/
