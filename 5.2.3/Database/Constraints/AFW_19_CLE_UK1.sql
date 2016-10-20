SET DEFINE OFF;
ALTER TABLE AFW_19_CLE ADD (
  CONSTRAINT AFW_19_CLE_UK1
  UNIQUE (REF_DISPN_FONCT, REF_LANG, INDIC_INTER, CODE_KEYPR, CODE_KEYDW, INDIC_SHIFT, INDIC_ALT, INDIC_CTRL)
  ENABLE VALIDATE)
/
