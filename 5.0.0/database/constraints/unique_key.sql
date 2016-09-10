ALTER TABLE APEXFRAMEWORK.AFW_01_ATRIB_MODL_COMNC
  DROP CONSTRAINT AFW_01_ATRIB_MODL_COMNC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_ATRIB_MODL_COMNC ADD (
  CONSTRAINT AFW_01_ATRIB_MODL_COMNC_UK1
  UNIQUE (CODE, REF_MODL_COMNC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_CODE_ERR_ORACL
  DROP CONSTRAINT AFW_01_CODE_ERR_ORCL_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_CODE_ERR_ORACL ADD (
  CONSTRAINT AFW_01_CODE_ERR_ORCL_UK1
  UNIQUE (ERR_CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_DESTN
  DROP CONSTRAINT AFW_01_DESTN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_DESTN ADD (
  CONSTRAINT AFW_01_DESTN_UK1
  UNIQUE (REF_ATRIB_STRUC_APLIC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_EVENM_NOTFB
  DROP CONSTRAINT AFW_01_EVENM_NOTFB_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_EVENM_NOTFB ADD (
  CONSTRAINT AFW_01_EVENM_NOTFB_UK1
  UNIQUE (CODE, REF_STRUC_APLIC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_HIERC_APLIC
  DROP CONSTRAINT AFW_12_HIERC_APLIC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_HIERC_APLIC ADD (
  CONSTRAINT AFW_12_HIERC_APLIC_UK1
  UNIQUE (REF_EVENM_NOTFB, REF_ATRIB_STRUC_APLIC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_LANG
  DROP CONSTRAINT AFW_01_LANG_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_LANG ADD (
  CONSTRAINT AFW_01_LANG_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_LANG_LANG
  DROP CONSTRAINT AFW_01_LANG_LANG_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_LANG_LANG ADD (
  CONSTRAINT AFW_01_LANG_LANG_UK1
  UNIQUE (REF_LANG, REF_LANG_CIBLE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_MESG
  DROP CONSTRAINT AFW_01_MESG_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_MESG ADD (
  CONSTRAINT AFW_01_MESG_UK1
  UNIQUE (NUMR_MESG, REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_MESG_ERR_LIE
  DROP CONSTRAINT AFW_01_MESG_ERR_LIE_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_MESG_ERR_LIE ADD (
  CONSTRAINT AFW_01_MESG_ERR_LIE_UK1
  UNIQUE (REF_CODE_ERR_ORACL, NOM_TABLE, NOM_COLN, NOM_CONTR, PAGE, REF_PRODT, TYPE_LIAIS, REF_MESG)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_MESG_LANG
  DROP CONSTRAINT AFW_01_MESG_LANG_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_MESG_LANG ADD (
  CONSTRAINT AFW_01_MESG_LANG_UK1
  UNIQUE (REF_MESG, REF_LANG)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_MESG_TRADC_APEX
  DROP CONSTRAINT AFW_01_MESG_TRADC_APEX_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_MESG_TRADC_APEX ADD (
  CONSTRAINT AFW_01_MESG_TRADC_APEX_UK1
  UNIQUE (REF_PRODT, REF_LANG, NOM)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_MODL_AFICH_NOTFC
  DROP CONSTRAINT AFW_01_MODL_AFICH_NOTFC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_MODL_AFICH_NOTFC ADD (
  CONSTRAINT AFW_01_MODL_AFICH_NOTFC_UK1
  UNIQUE (REF_DOMN, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_MODL_COMNC
  DROP CONSTRAINT AFW_01_MODL_COMNC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_MODL_COMNC ADD (
  CONSTRAINT AFW_01_MODL_COMNC_UK1
  UNIQUE (REF_DOMN, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_NOTFC
  DROP CONSTRAINT AFW_01_NOTFC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_NOTFC
  DROP CONSTRAINT AFW_01_NOTFC_UK2;

ALTER TABLE APEXFRAMEWORK.AFW_01_NOTFC ADD (
  CONSTRAINT AFW_01_NOTFC_UK1
  UNIQUE (REF_DOMN, CODE)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_01_NOTFC ADD (
  CONSTRAINT AFW_01_NOTFC_UK2
  UNIQUE (REF_DOMN, INDEN_MESG)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_OCURN_SA_EVENM_NOTFB
  DROP CONSTRAINT AFW_01_OSA_EVENM_NOTFB_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_OCURN_SA_EVENM_NOTFB ADD (
  CONSTRAINT AFW_01_OSA_EVENM_NOTFB_UK1
  UNIQUE (REF_HIERC_APLIC, REF_CONFG_EVENM_NOTFB, REF_SEQNC_STRUC_APLIC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_RESLT_DESTN
  DROP CONSTRAINT AFW_01_RESLT_DESTN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_RESLT_DESTN ADD (
  CONSTRAINT AFW_01_RESLT_DESTN_UK1
  UNIQUE (REF_DESTN, IDENT_ACCES)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_03_CLAS_INTER
  DROP CONSTRAINT AFW_03_CLAS_INTER_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_03_CLAS_INTER ADD (
  CONSTRAINT AFW_03_CLAS_INTER_UK1
  UNIQUE (REF_PRODT, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_04_CONTX_ETEND
  DROP CONSTRAINT AFW_04_CONTX_ETEND_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_04_CONTX_ETEND ADD (
  CONSTRAINT AFW_04_CONTX_ETEND_UK1
  UNIQUE (REF_CONTX, NOM, PAGE_CIBLE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_07_SEMPH
  DROP CONSTRAINT AFW_07_SEMPH_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_07_SEMPH ADD (
  CONSTRAINT AFW_07_SEMPH_UK1
  UNIQUE (CODE, VARBL1, VARBL2, VARBL3)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_07_VALR_AUDIT_STRUC_APLIC
  DROP CONSTRAINT AFW_07_VALR_AUDIT_SA_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_07_VALR_AUDIT_STRUC_APLIC ADD (
  CONSTRAINT AFW_07_VALR_AUDIT_SA_UK1
  UNIQUE (REF_AUDIT_STRUC_APLIC, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_APLIC
  DROP CONSTRAINT AFW_11_APLIC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_APLIC
  DROP CONSTRAINT AFW_11_APLIC_UK2;

ALTER TABLE APEXFRAMEWORK.AFW_11_APLIC ADD (
  CONSTRAINT AFW_11_APLIC_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_11_APLIC ADD (
  CONSTRAINT AFW_11_APLIC_UK2
  UNIQUE (NUMR_APLIC_APEX)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_ATRIB_ENTIT
  DROP CONSTRAINT AFW_11_ATRIB_ENTIT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_ATRIB_ENTIT ADD (
  CONSTRAINT AFW_11_ATRIB_ENTIT_UK1
  UNIQUE (REF_ENTIT, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_ENTIT
  DROP CONSTRAINT AFW_11_ENTIT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_ENTIT ADD (
  CONSTRAINT AFW_11_ENTIT_UK1
  UNIQUE (REF_VERSN, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_PARMT_AFW
  DROP CONSTRAINT AFW_11_PARMT_AFW_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_PARMT_AFW ADD (
  CONSTRAINT AFW_11_PARMT_AFW_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_PLUGN
  DROP CONSTRAINT AFW_11_PLUGN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_PLUGN ADD (
  CONSTRAINT AFW_11_PLUGN_UK1
  UNIQUE (CODE_INTER)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT
  DROP CONSTRAINT AFW_11_PRODT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT ADD (
  CONSTRAINT AFW_11_PRODT_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT_LANG
  DROP CONSTRAINT AFW_11_PRODT_LANG_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT_LANG ADD (
  CONSTRAINT AFW_11_PRODT_LANG_UK1
  UNIQUE (REF_PRODT, REF_LANG)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT_RESRC
  DROP CONSTRAINT AFW_11_PRODT_RESRC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT_RESRC ADD (
  CONSTRAINT AFW_11_PRODT_RESRC_UK1
  UNIQUE (REF_PRODT, REF_FORMT, REF_CONDT_EXECT, REF_RESRC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_VERSN
  DROP CONSTRAINT AFW_11_VERSN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_VERSN ADD (
  CONSTRAINT AFW_11_VERSN_UK1
  UNIQUE (REF_PRODT, REF_PLUGN, REF_APLIC, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_ACTIO_AUDIT
  DROP CONSTRAINT AFW_12_ACTIO_AUDIT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_ACTIO_AUDIT ADD (
  CONSTRAINT AFW_12_ACTIO_AUDIT_UK1
  UNIQUE (REF_STRUC_APLIC, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_ATRIB_STRUC_APLIC
  DROP CONSTRAINT AFW_12_ATRIB_STRUC_APLIC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_ATRIB_STRUC_APLIC ADD (
  CONSTRAINT AFW_12_ATRIB_STRUC_APLIC_UK1
  UNIQUE (NOM_COLN, REF_STRUC_APLIC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_DOMN
  DROP CONSTRAINT AFW_12_DOMN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_DOMN ADD (
  CONSTRAINT AFW_12_DOMN_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_DOMN_FONCT
  DROP CONSTRAINT AFW_12_DOMN_FONCT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_DOMN_FONCT ADD (
  CONSTRAINT AFW_12_DOMN_FONCT_UK1
  UNIQUE (REF_FONCT, REF_DOMN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_EVOLT_STAT
  DROP CONSTRAINT AFW_12_EVOLT_STAT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_EVOLT_STAT ADD (
  CONSTRAINT AFW_12_EVOLT_STAT_UK1
  UNIQUE (REF_STAT_EVOLT, REF_STAT, INDIC_CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_FAVR
  DROP CONSTRAINT AFW_12_FAVR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_FAVR ADD (
  CONSTRAINT AFW_12_FAVR_UK1
  UNIQUE (REF_UTILS, REF_STRUC_APLIC, REF_SEQNC_STRUC_APLIC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_FONCT
  DROP CONSTRAINT AFW_12_FONCT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_FONCT ADD (
  CONSTRAINT AFW_12_FONCT_UK1
  UNIQUE (REF_PRODT, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_FONCT_STRUC_APLIC
  DROP CONSTRAINT AFW_12_FONCT_STRUC_APLIC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_FONCT_STRUC_APLIC ADD (
  CONSTRAINT AFW_12_FONCT_STRUC_APLIC_UK1
  UNIQUE (REF_FONCT, REF_STRUC_APLIC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_GROUP_GADGT_UTILS
  DROP CONSTRAINT AFW_12_GROUP_GADGT_UTILS_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_GROUP_GADGT_UTILS ADD (
  CONSTRAINT AFW_12_GROUP_GADGT_UTILS_UK1
  UNIQUE (REF_UTILS_DEMDR, REF_UTILS, REF_TABL_BORD, NOM)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_GROUP_STAT
  DROP CONSTRAINT AFW_12_GROUP_STAT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_GROUP_STAT ADD (
  CONSTRAINT AFW_12_GROUP_STAT_UK1
  UNIQUE (REF_PRODT, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_GROUP_UTILS
  DROP CONSTRAINT AFW_12_GROUP_UTILS_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_GROUP_UTILS ADD (
  CONSTRAINT AFW_12_GROUP_UTILS_UK1
  UNIQUE (CODE, REF_DOMN, REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_GR_UT_OPERT_OPTIO_DOMN
  DROP CONSTRAINT AFW_12_GU_OPER_OPT_DOMN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_GR_UT_OPERT_OPTIO_DOMN ADD (
  CONSTRAINT AFW_12_GU_OPER_OPT_DOMN_UK1
  UNIQUE (REF_GROUP_UTILS, REF_OPERT, REF_OPERT_OPTIO, REF_DOMN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_LIEN_GADGT_UTILS_PARMT
  DROP CONSTRAINT AFW_12_LIEN_GADGT_UTILS_P_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_LIEN_GADGT_UTILS_PARMT ADD (
  CONSTRAINT AFW_12_LIEN_GADGT_UTILS_P_UK1
  UNIQUE (REF_LIEN_GADGT_UTILS, REF_GADGT_PARMT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_STAT
  DROP CONSTRAINT AFW_12_STAT_UK2;

ALTER TABLE APEXFRAMEWORK.AFW_12_STAT ADD (
  CONSTRAINT AFW_12_STAT_UK2
  UNIQUE (REF_STRUC_APLIC, REF_GROUP_STAT, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_STRUC_APLIC
  DROP CONSTRAINT AFW_12_STRUC_APLIC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_STRUC_APLIC ADD (
  CONSTRAINT AFW_12_STRUC_APLIC_UK1
  UNIQUE (REF_PRODT, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_STRUC_APLIC_LANG
  DROP CONSTRAINT AFW_12_STRUC_APLIC_LANG_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_STRUC_APLIC_LANG ADD (
  CONSTRAINT AFW_12_STRUC_APLIC_LANG_UK1
  UNIQUE (REF_STRUC_APLIC, REF_LANG)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_TUTRL
  DROP CONSTRAINT AFW_12_TUTRL_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_TUTRL ADD (
  CONSTRAINT AFW_12_TUTRL_UK1
  UNIQUE (REF_UTILS, REF_TUTRL)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_TYPE_STRUC
  DROP CONSTRAINT AFW_12_TYPE_STRUC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_TYPE_STRUC ADD (
  CONSTRAINT AFW_12_TYPE_STRUC_UK1
  UNIQUE (REF_DOMN, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS
  DROP CONSTRAINT AFW_12_UTILS_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS
  DROP CONSTRAINT AFW_12_UTILS_UK2;

ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS
  DROP CONSTRAINT AFW_12_UTILS_UK3;

ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS ADD (
  CONSTRAINT AFW_12_UTILS_UK1
  UNIQUE (CODE_UTILS)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS ADD (
  CONSTRAINT AFW_12_UTILS_UK2
  UNIQUE (COURL)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS ADD (
  CONSTRAINT AFW_12_UTILS_UK3
  UNIQUE (CODE_UTILS_BASE_DON)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS_AVATR
  DROP CONSTRAINT AFW_12_UTILS_AVATR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS_AVATR ADD (
  CONSTRAINT AFW_12_UTILS_AVATR_UK1
  UNIQUE (REF_UTILS, REF_DOMN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_CONDT_EXECT
  DROP CONSTRAINT AFW_13_CONDT_EXECT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_CONDT_EXECT ADD (
  CONSTRAINT AFW_13_CONDT_EXECT_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_CONDT_PILTB
  DROP CONSTRAINT AFW_13_CONDT_PILTB_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_CONDT_PILTB ADD (
  CONSTRAINT AFW_13_CONDT_PILTB_UK1
  UNIQUE (REF_PAGE, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_DOSR_VIRTL
  DROP CONSTRAINT AFW_13_DOSR_VIRTL_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_DOSR_VIRTL ADD (
  CONSTRAINT AFW_13_DOSR_VIRTL_UK1
  UNIQUE (REF_PRODT, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_EMPLA_DOSR_VIRTL
  DROP CONSTRAINT AFW_13_EMPLA_DOSR_VIRTL_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_EMPLA_DOSR_VIRTL ADD (
  CONSTRAINT AFW_13_EMPLA_DOSR_VIRTL_UK1
  UNIQUE (REF_DOSR_VIRTL, REF_VERSN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_ETAPE_TUTRL
  DROP CONSTRAINT AFW_13_ETAPE_TUTRL_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_ETAPE_TUTRL ADD (
  CONSTRAINT AFW_13_ETAPE_TUTRL_UK1
  UNIQUE (REF_TUTRL, ORDRE_PRESN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_FORMT_RESRC
  DROP CONSTRAINT AFW_13_FORMT_RESRC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_FORMT_RESRC ADD (
  CONSTRAINT AFW_13_FORMT_RESRC_UK1
  UNIQUE (REF_PRODT, REF_TYPE_FICHR, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_INSTA_PREFR
  DROP CONSTRAINT AFW_13_INSTA_PREFR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_INSTA_PREFR ADD (
  CONSTRAINT AFW_13_INSTA_PREFR_UK1
  UNIQUE (REF_PREFR, REF_UTILS, REF_SESN, REF_STRUC_APLIC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_ITEM_MENU
  DROP CONSTRAINT AFW_13_ITEM_MENU_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_ITEM_MENU ADD (
  CONSTRAINT AFW_13_ITEM_MENU_UK1
  UNIQUE (CODE, REF_MENU)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_LIEN_CONDT_PILTB
  DROP CONSTRAINT AFW_13_LIEN_CONDT_PILTB_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_LIEN_CONDT_PILTB ADD (
  CONSTRAINT AFW_13_LIEN_CONDT_PILTB_UK1
  UNIQUE (REF_CONDT_PILTB, REF_PAGE_ITEM)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_LISTE_NAVGT
  DROP CONSTRAINT AFW_13_LISTE_NAVGT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_LISTE_NAVGT ADD (
  CONSTRAINT AFW_13_LISTE_NAVGT_UK1
  UNIQUE (REF_PAGE, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_MENU
  DROP CONSTRAINT AFW_13_MENU_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_MENU ADD (
  CONSTRAINT AFW_13_MENU_UK1
  UNIQUE (CODE, REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_MIME_TYPE
  DROP CONSTRAINT AFW_13_MIME_TYPE_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_MIME_TYPE ADD (
  CONSTRAINT AFW_13_MIME_TYPE_UK1
  UNIQUE (EXT, MIME_TYPE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_OPERT
  DROP CONSTRAINT AFW_13_OPERT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_OPERT ADD (
  CONSTRAINT AFW_13_OPERT_UK1
  UNIQUE (REF_PRODT, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_OPERT_OPTIO
  DROP CONSTRAINT AFW_13_OPERT_OPTIO_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_OPERT_OPTIO
  DROP CONSTRAINT AFW_13_OPERT_OPTIO_UK2;

ALTER TABLE APEXFRAMEWORK.AFW_13_OPERT_OPTIO ADD (
  CONSTRAINT AFW_13_OPERT_OPTIO_UK1
  UNIQUE (REF_OPERT, CODE)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_13_OPERT_OPTIO ADD (
  CONSTRAINT AFW_13_OPERT_OPTIO_UK2
  UNIQUE (REF_OPERT, PREPN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE
  DROP CONSTRAINT AFW_13_PAGE_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE ADD (
  CONSTRAINT AFW_13_PAGE_UK1
  UNIQUE (REF_APLIC, NUMR_APEX)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_IR
  DROP CONSTRAINT AFW_13_PAGE_IR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_IR
  DROP CONSTRAINT AFW_13_PAGE_IR_UK2;

ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_IR ADD (
  CONSTRAINT AFW_13_PAGE_IR_UK1
  UNIQUE (REF_PAGE)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_IR ADD (
  CONSTRAINT AFW_13_PAGE_IR_UK2
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_ITEM
  DROP CONSTRAINT AFW_13_PAGE_ITEM_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_ITEM ADD (
  CONSTRAINT AFW_13_PAGE_ITEM_UK1
  UNIQUE (REF_PAGE, NOM_APEX, ID_APEX)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_ITEM_LANG
  DROP CONSTRAINT AFW_13_PAGE_ITEM_LANG_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_ITEM_LANG ADD (
  CONSTRAINT AFW_13_PAGE_ITEM_LANG_UK1
  UNIQUE (REF_PAGE_ITEM, REF_LANG)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_LANG
  DROP CONSTRAINT AFW_13_PAGE_LANG_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_LANG ADD (
  CONSTRAINT AFW_13_PAGE_LANG_UK1
  UNIQUE (REF_PAGE, REF_LANG)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_PREFR_NAVGT
  DROP CONSTRAINT AFW_13_PAGE_PREFR_NAVGT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_PREFR_NAVGT ADD (
  CONSTRAINT AFW_13_PAGE_PREFR_NAVGT_UK1
  UNIQUE (REF_PAGE, REF_PAGE_IR)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_REGN_PILTB
  DROP CONSTRAINT AFW_13_REGN_PILTB_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_REGN_PILTB ADD (
  CONSTRAINT AFW_13_REGN_PILTB_UK1
  UNIQUE (REF_PAGE, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_REGN_PILTB_LANG
  DROP CONSTRAINT AFW_13_REGN_PILTB_LANG_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_REGN_PILTB_LANG ADD (
  CONSTRAINT AFW_13_REGN_PILTB_LANG_UK1
  UNIQUE (REF_REGN_PILTB, REF_LANG)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_RESRC
  DROP CONSTRAINT AFW_13_RESRC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_RESRC ADD (
  CONSTRAINT AFW_13_RESRC_UK1
  UNIQUE (REF_STRUC_APLIC, REF_PRODT, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_TUTRL
  DROP CONSTRAINT AFW_13_TUTRL_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_TUTRL ADD (
  CONSTRAINT AFW_13_TUTRL_UK1
  UNIQUE (REF_PAGE, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_TYPE_FICHR
  DROP CONSTRAINT AFW_13_TYPE_FICHR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_TYPE_FICHR ADD (
  CONSTRAINT AFW_13_TYPE_FICHR_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_14_DOMN_VALR
  DROP CONSTRAINT AFW_14_DOMN_VALR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_14_DOMN_VALR ADD (
  CONSTRAINT AFW_14_DOMN_VALR_UK1
  UNIQUE (CODE, REF_PRODT, REF_DOMN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_14_FORMT
  DROP CONSTRAINT AFW_14_FORMT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_14_FORMT ADD (
  CONSTRAINT AFW_14_FORMT_UK1
  UNIQUE (REF_PRODT, DEFNT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_14_TYPE_DOMN_VALR
  DROP CONSTRAINT AFW_14_TYPE_DOMN_VALR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_14_TYPE_DOMN_VALR ADD (
  CONSTRAINT AFW_14_TYPE_DOMN_VALR_UK1
  UNIQUE (CODE, REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_17_COMPT_AXIAT
  DROP CONSTRAINT AFW_17_COMPT_AXIAT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_17_COMPT_AXIAT
  DROP CONSTRAINT AFW_17_COMPT_AXIAT_UK2;

ALTER TABLE APEXFRAMEWORK.AFW_17_COMPT_AXIAT ADD (
  CONSTRAINT AFW_17_COMPT_AXIAT_UK1
  UNIQUE (REF_DOMN, CODE)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_17_COMPT_AXIAT ADD (
  CONSTRAINT AFW_17_COMPT_AXIAT_UK2
  UNIQUE (REF_DOMN, NUMR)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_17_PROFL_COURL
  DROP CONSTRAINT AFW_17_PROFL_COURL_UK2;

ALTER TABLE APEXFRAMEWORK.AFW_17_PROFL_COURL ADD (
  CONSTRAINT AFW_17_PROFL_COURL_UK2
  UNIQUE (REF_DOMN, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_19_BOUTN
  DROP CONSTRAINT AFW_19_BOUTN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_19_BOUTN ADD (
  CONSTRAINT AFW_19_BOUTN_UK1
  UNIQUE (REF_DISPN_FONCT, REF_LANG, ITEM_SUBST)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_19_CLE
  DROP CONSTRAINT AFW_19_CLE_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_19_CLE ADD (
  CONSTRAINT AFW_19_CLE_UK1
  UNIQUE (REF_DISPN_FONCT, REF_LANG, INDIC_INTER, CODE_KEYPR, CODE_KEYDW, INDIC_SHIFT, INDIC_ALT, INDIC_CTRL)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_19_DISPN_FONCT
  DROP CONSTRAINT AFW_19_DISPN_FONCT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_19_DISPN_FONCT ADD (
  CONSTRAINT AFW_19_DISPN_FONCT_UK1
  UNIQUE (REF_FONCT, REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT
  DROP CONSTRAINT AFW_19_FONCT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT ADD (
  CONSTRAINT AFW_19_FONCT_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT_LANG
  DROP CONSTRAINT AFW_19_FONCT_LANG_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT_LANG ADD (
  CONSTRAINT AFW_19_FONCT_LANG_UK1
  UNIQUE (REF_FONCT, REF_LANG)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE
  DROP CONSTRAINT AFW_21_PLUGN_ARBRE_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_UK1
  UNIQUE (CODE, REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD
  DROP CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_UK1
  UNIQUE (REF_PLUGN_ARBRE, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_CALND
  DROP CONSTRAINT AFW_21_PLUGN_CALND_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_CALND ADD (
  CONSTRAINT AFW_21_PLUGN_CALND_UK1
  UNIQUE (CODE, REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_CALND_COULR
  DROP CONSTRAINT AFW_21_PLUGN_CALND_COULR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_CALND_COULR ADD (
  CONSTRAINT AFW_21_PLUGN_CALND_COULR_UK1
  UNIQUE (ORDRE_PRESN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ITEM_MENU
  DROP CONSTRAINT AFW_21_PLUGN_ITEM_MENU_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ITEM_MENU ADD (
  CONSTRAINT AFW_21_PLUGN_ITEM_MENU_UK1
  UNIQUE (REF_ITEM_MENU, REF_PLUGN_MENU)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_MENU
  DROP CONSTRAINT AFW_21_PLUGN_MENU_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_MENU ADD (
  CONSTRAINT AFW_21_PLUGN_MENU_UK1
  UNIQUE (CODE, REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_23_APLIC_MODL_RECHR
  DROP CONSTRAINT AFW_23_APLIC_MODL_RECHR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_23_APLIC_MODL_RECHR ADD (
  CONSTRAINT AFW_23_APLIC_MODL_RECHR_UK1
  UNIQUE (REF_MODL_RECHR, REF_STRUC_APLIC_RECHR)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_23_DETL_APLIC_MODL_RECHR
  DROP CONSTRAINT AFW_23_DETL_APLIC_MODL_REC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_23_DETL_APLIC_MODL_RECHR ADD (
  CONSTRAINT AFW_23_DETL_APLIC_MODL_REC_UK1
  UNIQUE (REF_APLIC_MODL_RECHR, REF_ATRIB_STRUC_APLIC, REF_PATRN_RECHR, PERTN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_23_DETL_RESLT_RECHR
  DROP CONSTRAINT AFW_23_DETL_RESLT_RECHR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_23_DETL_RESLT_RECHR ADD (
  CONSTRAINT AFW_23_DETL_RESLT_RECHR_UK1
  UNIQUE (REF_RECHR, REF_ENONC_RECHR, REF_DETL_APLIC_MODL_RECHR, REF_SEQNC_STRUC_APLIC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_CHAMP
  DROP CONSTRAINT AFW_25_CHAMP_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_CHAMP ADD (
  CONSTRAINT AFW_25_CHAMP_UK1
  UNIQUE (CODE, REF_VERSN_PUBLC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_CHAMP_PUBLC_TRAVL
  DROP CONSTRAINT AFW_25_CHAMP_PUBLC_TRAVL_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_CHAMP_PUBLC_TRAVL ADD (
  CONSTRAINT AFW_25_CHAMP_PUBLC_TRAVL_UK1
  UNIQUE (REF_PUBLC_TRAVL, REF_CHAMP)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_DOMN_TYPE_PUBLC
  DROP CONSTRAINT AFW_25_DOMN_TYPE_PUBLC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_DOMN_TYPE_PUBLC ADD (
  CONSTRAINT AFW_25_DOMN_TYPE_PUBLC_UK1
  UNIQUE (REF_DOMN, REF_TYPE_PUBLC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_ELEMN_CONFG_PUBLC
  DROP CONSTRAINT AFW_25_ELEMN_CONFG_PUBLC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_ELEMN_CONFG_PUBLC ADD (
  CONSTRAINT AFW_25_ELEMN_CONFG_PUBLC_UK1
  UNIQUE (REF_TYPE_PUBLC, CODE, DNR_REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_ENGIN
  DROP CONSTRAINT AFW_25_ENGIN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_ENGIN ADD (
  CONSTRAINT AFW_25_ENGIN_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_ENGIN_VERSN_PUBLC
  DROP CONSTRAINT AFW_25_ENGIN_VERSN_PUBLC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_ENGIN_VERSN_PUBLC ADD (
  CONSTRAINT AFW_25_ENGIN_VERSN_PUBLC_UK1
  UNIQUE (REF_VERSN_PUBLC, REF_ENGIN, DNR_REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_GROUP_PUBLC
  DROP CONSTRAINT AFW_25_GROUP_PUBLC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_GROUP_PUBLC ADD (
  CONSTRAINT AFW_25_GROUP_PUBLC_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_PARMT_TYPE_PUBLC
  DROP CONSTRAINT AFW_25_PARMT_TYPE_PUBLC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_PARMT_TYPE_PUBLC ADD (
  CONSTRAINT AFW_25_PARMT_TYPE_PUBLC_UK1
  UNIQUE (REF_TYPE_PUBLC, REF_ENGIN, CODE, DNR_REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_PUBLC
  DROP CONSTRAINT AFW_25_PUBLC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_PUBLC ADD (
  CONSTRAINT AFW_25_PUBLC_UK1
  UNIQUE (CODE, DNR_REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_THEME_SUBST
  DROP CONSTRAINT AFW_25_THEME_SUBST_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_THEME_SUBST ADD (
  CONSTRAINT AFW_25_THEME_SUBST_UK1
  UNIQUE (REF_THEME, CODE_SUBST)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_TYPE_PUBLC
  DROP CONSTRAINT AFW_25_TYPE_PUBLC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_TYPE_PUBLC ADD (
  CONSTRAINT AFW_25_TYPE_PUBLC_UK1
  UNIQUE (CODE, DNR_REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_TYPE_TRAVL
  DROP CONSTRAINT AFW_25_TYPE_TRAVL_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_TYPE_TRAVL ADD (
  CONSTRAINT AFW_25_TYPE_TRAVL_UK1
  UNIQUE (REF_DOMN, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_VALR_ELEMN_CONFG
  DROP CONSTRAINT AFW_25_VALR_ELEMN_CONFG_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_VALR_ELEMN_CONFG ADD (
  CONSTRAINT AFW_25_VALR_ELEMN_CONFG_UK1
  UNIQUE (REF_ELEMN_CONFG_PUBLC, REF_DOMN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_VERSN_PUBLC
  DROP CONSTRAINT AFW_25_VERSN_PUBLC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_VERSN_PUBLC ADD (
  CONSTRAINT AFW_25_VERSN_PUBLC_UK1
  UNIQUE (CODE, DNR_REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_VERSN_PUBLC_SUBST
  DROP CONSTRAINT AFW_25_VERSN_PUBLC_SUBST_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_VERSN_PUBLC_SUBST ADD (
  CONSTRAINT AFW_25_VERSN_PUBLC_SUBST_UK1
  UNIQUE (REF_VERSN_PUBLC, CODE_SUBST)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_30_AFECT_ITEM
  DROP CONSTRAINT AFW_30_AFECT_ITEM_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_30_AFECT_ITEM ADD (
  CONSTRAINT AFW_30_AFECT_ITEM_UK1
  UNIQUE (REF_ITEM_CARNT_PRODT, REF_UTILS)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_30_CARNT_APLIC
  DROP CONSTRAINT AFW_30_CARNT_PRODT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_30_CARNT_APLIC ADD (
  CONSTRAINT AFW_30_CARNT_PRODT_UK1
  UNIQUE (REF_APLIC)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_30_CARNT_PRODT
  DROP CONSTRAINT AFW_30_CARNT_SYSTM_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_30_CARNT_PRODT ADD (
  CONSTRAINT AFW_30_CARNT_SYSTM_UK1
  UNIQUE (REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_30_CARNT_SPRIN
  DROP CONSTRAINT AFW_30_CARNT_SPRIN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_30_CARNT_SPRIN ADD (
  CONSTRAINT AFW_30_CARNT_SPRIN_UK1
  UNIQUE (REF_VERSN, DATE_FIN_PREVU, DATE_DEBUT_PREVU, REF_CARNT_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_30_CAS_UTILS
  DROP CONSTRAINT AFW_30_CAS_UTILS_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_30_CAS_UTILS
  DROP CONSTRAINT AFW_30_CAS_UTILS_UK2;

ALTER TABLE APEXFRAMEWORK.AFW_30_CAS_UTILS ADD (
  CONSTRAINT AFW_30_CAS_UTILS_UK1
  UNIQUE (REF_CARNT_PRODT, CODE)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_30_CAS_UTILS ADD (
  CONSTRAINT AFW_30_CAS_UTILS_UK2
  UNIQUE (REF_CARNT_PRODT, NOM)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_30_EFORT_ITEM
  DROP CONSTRAINT AFW_30_EFORT_ITEM_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_30_EFORT_ITEM ADD (
  CONSTRAINT AFW_30_EFORT_ITEM_UK1
  UNIQUE (DATE_EFORT, REF_UTILS, REF_ITEM_CARNT_SPRIN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_30_HISTR_EFORT_RESTN
  DROP CONSTRAINT AFW_30_HISTR_EFORT_RESTN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_30_HISTR_EFORT_RESTN ADD (
  CONSTRAINT AFW_30_HISTR_EFORT_RESTN_UK1
  UNIQUE (DATE_HEURE_SAISI, REF_ITEM_CARNT_SPRIN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_30_ITEM_CARNT_PRODT
  DROP CONSTRAINT AFW_30_ITEM_CARNT_PRODT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_30_ITEM_CARNT_PRODT ADD (
  CONSTRAINT AFW_30_ITEM_CARNT_PRODT_UK1
  UNIQUE (REF_CARNT_PRODT, NOM)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_30_ITEM_CARNT_SPRIN
  DROP CONSTRAINT AFW_30_ITEM_CARNT_SPRIN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_30_ITEM_CARNT_SPRIN ADD (
  CONSTRAINT AFW_30_ITEM_CARNT_SPRIN_UK1
  UNIQUE (REF_CARNT_SPRIN, NOM)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_30_PAGE
  DROP CONSTRAINT AFW_30_PAGE_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_30_PAGE ADD (
  CONSTRAINT AFW_30_PAGE_UK1
  UNIQUE (REF_AFW_13_PAGE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_30_PAGE_ITEM
  DROP CONSTRAINT AFW_30_PAGE_ITEM_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_30_PAGE_ITEM ADD (
  CONSTRAINT AFW_30_PAGE_ITEM_UK1
  UNIQUE (REF_ITEM_CARNT_PRODT, REF_AFW_30_PAGE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_36_ATRIB_DISPN
  DROP CONSTRAINT AFW_36_ATRIB_DISPN_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_36_ATRIB_DISPN ADD (
  CONSTRAINT AFW_36_ATRIB_DISPN_UK1
  UNIQUE (REF_PAGE, NOM_SQL, REF_TYPE_DON)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_36_LIEN_OPERT_FILTR
  DROP CONSTRAINT AFW_36_LIEN_OPERT_FILTR_UKI;

ALTER TABLE APEXFRAMEWORK.AFW_36_LIEN_OPERT_FILTR ADD (
  CONSTRAINT AFW_36_LIEN_OPERT_FILTR_UKI
  UNIQUE (REF_TYPE_DON, REF_OPERT_FILTR)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_36_OPERT_FILTR
  DROP CONSTRAINT AFW_36_OPERT_FILTR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_36_OPERT_FILTR ADD (
  CONSTRAINT AFW_36_OPERT_FILTR_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_36_TYPE_DON
  DROP CONSTRAINT AFW_36_TYPE_DON_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_36_TYPE_DON ADD (
  CONSTRAINT AFW_36_TYPE_DON_UK1
  UNIQUE (CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_36_VUE
  DROP CONSTRAINT AFW_36_VUE_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_36_VUE ADD (
  CONSTRAINT AFW_36_VUE_UK1
  UNIQUE (REF_PAGE, CODE)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_36_VUE_ATRIB
  DROP CONSTRAINT AFW_36_VUE_ATRIB_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_36_VUE_ATRIB ADD (
  CONSTRAINT AFW_36_VUE_ATRIB_UK1
  UNIQUE (REF_VUE, REF_ATRIB_DISPN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_36_VUE_TRI_SECND
  DROP CONSTRAINT AFW_36_VUE_TRI_SECND_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_36_VUE_TRI_SECND ADD (
  CONSTRAINT AFW_36_VUE_TRI_SECND_UK1
  UNIQUE (REF_VUE, REF_SESN)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT
  DROP CONSTRAINT AFW_37_GADGT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT ADD (
  CONSTRAINT AFW_37_GADGT_UK1
  UNIQUE (CODE, REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT_CATGR
  DROP CONSTRAINT AFW_37_GADGT_CATGR_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT_CATGR ADD (
  CONSTRAINT AFW_37_GADGT_CATGR_UK1
  UNIQUE (CODE, REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT_PARMT
  DROP CONSTRAINT AFW_37_GADGT_PARMT_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT_PARMT ADD (
  CONSTRAINT AFW_37_GADGT_PARMT_UK1
  UNIQUE (CODE, REF_GADGT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT_PARMT_RACRC
  DROP CONSTRAINT AFW_37_GADGT_PARMT_RACRC_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT_PARMT_RACRC ADD (
  CONSTRAINT AFW_37_GADGT_PARMT_RACRC_UK1
  UNIQUE (CODE, REF_PRODT)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_37_LIEN_GADGT_PARMT_RACRC
  DROP CONSTRAINT AFW_37_LIEN_GADGT_PARMT_R_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_37_LIEN_GADGT_PARMT_RACRC ADD (
  CONSTRAINT AFW_37_LIEN_GADGT_PARMT_R_UK1
  UNIQUE (REF_GADGT_PARMT, REF_GADGT_PARMT_RACRC, NOM)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_37_TABL_BORD
  DROP CONSTRAINT AFW_37_TABL_BORD_UK1;

ALTER TABLE APEXFRAMEWORK.AFW_37_TABL_BORD ADD (
  CONSTRAINT AFW_37_TABL_BORD_UK1
  UNIQUE (CODE, REF_PRODT)
  ENABLE VALIDATE);