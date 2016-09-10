ALTER TABLE APEXFRAMEWORK.AFW_01_CONFG_EVENM_NOTFB
  DROP CONSTRAINT AFW_01_CONFG_EVENM_NOTFB_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_CONFG_EVENM_NOTFB
  DROP CONSTRAINT AFW_01_CONFG_EVENM_NOTFB_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_01_CONFG_EVENM_NOTFB ADD (
  CONSTRAINT AFW_01_CONFG_EVENM_NOTFB_CK1
  CHECK (
  ref_profl_courl is not null and ref_compt_twili is null
  or
  ref_profl_courl is null and ref_compt_twili is not null
  or
  ref_profl_courl is null and ref_compt_twili is null
)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_01_CONFG_EVENM_NOTFB ADD (
  CONSTRAINT AFW_01_CONFG_EVENM_NOTFB_CK2
  CHECK ((ref_compt_twili is null and ref_profl_courl is not null) or (
ref_compt_twili is not null and ref_profl_courl is null))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_HIERC_APLIC
  DROP CONSTRAINT AFW_01_HIERC_APLIC_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_HIERC_APLIC ADD (
  CONSTRAINT AFW_01_HIERC_APLIC_CK1
  CHECK (aplic_prior >= 0)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_01_MESG_INFOR
  DROP CONSTRAINT AFW_01_MESG_INFOR_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_01_MESG_INFOR ADD (
  CONSTRAINT AFW_01_MESG_INFOR_CK1
  CHECK ((SESS_ID is not null and REF_UTILS is null) or (SESS_ID is null and
REF_UTILS is not null))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_03_LIEN_CLAS_INTER_UTILS
  DROP CONSTRAINT AFW_03_LIEN_CLAS_INTER_UTI_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_03_LIEN_CLAS_INTER_UTILS ADD (
  CONSTRAINT AFW_03_LIEN_CLAS_INTER_UTI_CK1
  CHECK ((ref_group_utils is not null  and ref_utils is null )  or  (
ref_group_utils is null    and    ref_utils is not null  ))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_04_CONTX_ETEND
  DROP CONSTRAINT AFW_04_CONTX_ETEND_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_04_CONTX_ETEND
  DROP CONSTRAINT AFW_04_CONTX_ETEND_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_04_CONTX_ETEND ADD (
  CONSTRAINT AFW_04_CONTX_ETEND_CK1
  CHECK (type_alimn in ('A', 'M', 'RM', 'RMA'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_04_CONTX_ETEND ADD (
  CONSTRAINT AFW_04_CONTX_ETEND_CK2
  CHECK (TYPE_ELEMN in ('I', 'V'))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_04_FIL_ARIAN
  DROP CONSTRAINT AFW_04_FIL_ARIAN_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_04_FIL_ARIAN ADD (
  CONSTRAINT AFW_04_FIL_ARIAN_CK1
  CHECK (
(ref_navgt_histr is not null and session_id is null) or
(ref_navgt_histr is null and session_id is not null)
)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_07_AUDIT_STRUC_APLIC
  DROP CONSTRAINT AFW_07_AUDIT_STRUC_APLIC_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_07_AUDIT_STRUC_APLIC
  DROP CONSTRAINT AFW_07_AUDIT_STRUC_APLIC_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_07_AUDIT_STRUC_APLIC
  DROP CONSTRAINT AFW_07_AUDIT_STRUC_APLIC_CK3;

ALTER TABLE APEXFRAMEWORK.AFW_07_AUDIT_STRUC_APLIC
  DROP CONSTRAINT AFW_07_AUDIT_STRUC_APLIC_CK4;

ALTER TABLE APEXFRAMEWORK.AFW_07_AUDIT_STRUC_APLIC ADD (
  CONSTRAINT AFW_07_AUDIT_STRUC_APLIC_CK1
  CHECK (natr_audit in ('CRE','MOD','SUP','PER','AFF'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_07_AUDIT_STRUC_APLIC ADD (
  CONSTRAINT AFW_07_AUDIT_STRUC_APLIC_CK2
  CHECK ((natr_audit in ('CRE','MOD','SUP') and ref_page is null and
ref_actio_audit is null) or (natr_audit in ('CRE','MOD','SUP')))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_07_AUDIT_STRUC_APLIC ADD (
  CONSTRAINT AFW_07_AUDIT_STRUC_APLIC_CK3
  CHECK ((natr_audit = 'PER' and ref_actio_audit is not null and ref_page is
null) or natr_audit != 'PER')
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_07_AUDIT_STRUC_APLIC ADD (
  CONSTRAINT AFW_07_AUDIT_STRUC_APLIC_CK4
  CHECK ((natr_audit = 'AFF' and ref_actio_audit is null and ref_page is not
null) or natr_audit != 'AFF')
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT
  DROP CONSTRAINT AFW_11_PRODT_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT
  DROP CONSTRAINT AFW_11_PRODT_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT ADD (
  CONSTRAINT AFW_11_PRODT_CK1
  CHECK ((indic_extra_tout = 'N' and tail_tabl_extra is not null) or indic_extra_tout = 'O')
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT ADD (
  CONSTRAINT AFW_11_PRODT_CK2
  CHECK (tail_tabl_extra > 0)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT_LANG
  DROP CONSTRAINT AFW_11_PRODT_LANG_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT_LANG ADD (
  CONSTRAINT AFW_11_PRODT_LANG_CK1
  CHECK (indic_deft in ('O','N'))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT_RESRC
  DROP CONSTRAINT AFW_11_PRODT_RESRC_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_PRODT_RESRC ADD (
  CONSTRAINT AFW_11_PRODT_RESRC_CK1
  CHECK (
(ref_plugn is null or ref_prodt is not null) or
(ref_plugn is not null or ref_prodt is null))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_11_VERSN
  DROP CONSTRAINT AFW_11_VERSN_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_11_VERSN ADD (
  CONSTRAINT AFW_11_VERSN_CK1
  CHECK (ref_prodt is not null and dnr_ref_prodt is not null and ref_aplic is null and dnr_ref_aplic is null and ref_plugn is null or
          ref_prodt is null and dnr_ref_prodt is null and ref_aplic is not null and dnr_ref_aplic is not null and ref_plugn is null or
          ref_prodt is null and dnr_ref_prodt is null and ref_aplic is null and dnr_ref_aplic is null and ref_plugn is not null)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_DEFNT_ACCES
  DROP CONSTRAINT AFW_12_DEFNT_ACCES_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_DEFNT_ACCES
  DROP CONSTRAINT AFW_12_DEFNT_ACCES_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_12_DEFNT_ACCES ADD (
  CONSTRAINT AFW_12_DEFNT_ACCES_CK1
  CHECK ((    REF_GROUP_UTILS IS NOT NULL    AND       REF_UTILS IS NULL  )  OR  (    REF_GROUP_UTILS IS NULL    AND       REF_UTILS IS NOT NULL  ))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_12_DEFNT_ACCES ADD (
  CONSTRAINT AFW_12_DEFNT_ACCES_CK2
  CHECK ((    ref_opert is not null   and   ref_struc_aplic is null  )
    or  (    ref_opert is null   and   ref_struc_aplic is not null  )
)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_DOMN_SERVR_LDAP
  DROP CONSTRAINT AFW_12_DOMN_SERVR_LDAP_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_DOMN_SERVR_LDAP ADD (
  CONSTRAINT AFW_12_DOMN_SERVR_LDAP_CK1
  CHECK (
  date_debut_efect < date_fin_efect or date_fin_efect is null
)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_DOMN_UTILS
  DROP CONSTRAINT AFW_12_DOMN_UTILS_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_DOMN_UTILS ADD (
  CONSTRAINT AFW_12_DOMN_UTILS_CK1
  CHECK (
  date_debut_efect < date_fin_efect or date_fin_efect is null
)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_GROUP_GADGT_UTILS
  DROP CONSTRAINT AFW_12_GROUP_GADGT_UTILS_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_GROUP_GADGT_UTILS ADD (
  CONSTRAINT AFW_12_GROUP_GADGT_UTILS_CK1
  CHECK (indic_systm in ('N','O'))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_GROUP_UTILS
  DROP CONSTRAINT AFW_12_GROUP_UTILS_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_GROUP_UTILS ADD (
  CONSTRAINT AFW_12_GROUP_UTILS_CK1
  CHECK (
(ref_domn is not null and ref_prodt is null and dnr_ref_prodt is null)
or
(ref_domn is null and ref_prodt is not null and dnr_ref_prodt is not null)
or
(ref_domn is null and ref_prodt is null and dnr_ref_prodt is null and code = 'SUPER_UTILS')
)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_LIEN_GR_GADGT_GR_UTILS
  DROP CONSTRAINT AFW_12_LIEN_GR_G_GR_U_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_LIEN_GR_GADGT_GR_UTILS ADD (
  CONSTRAINT AFW_12_LIEN_GR_G_GR_U_CK1
  CHECK (ref_group_utils is not null or ref_utils is not null)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_LIEN_GROUP_UTILS
  DROP CONSTRAINT AFW_12_LIEN_GROUP_UTILS_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_LIEN_GROUP_UTILS
  DROP CONSTRAINT AFW_12_LIEN_GROUP_UTILS_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_12_LIEN_GROUP_UTILS ADD (
  CONSTRAINT AFW_12_LIEN_GROUP_UTILS_CK1
  CHECK (
  (    REF_GROUP_UTILS_LIE IS NOT NULL    AND    REF_UTILS IS NULL )
  OR
  (    REF_GROUP_UTILS_LIE IS NULL    AND    REF_UTILS IS NOT NULL )
 )
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_12_LIEN_GROUP_UTILS ADD (
  CONSTRAINT AFW_12_LIEN_GROUP_UTILS_CK2
  CHECK ((dnr_ref_prodt is not null and ref_domn is null)
or
(dnr_ref_prodt is null and ref_domn is not null))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_REQT_INTER_UTILS
  DROP CONSTRAINT AFW_12_REQT_INTER_UTILS_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_REQT_INTER_UTILS ADD (
  CONSTRAINT AFW_12_REQT_INTER_UTILS_CK1
  CHECK (
  date_debut_efect < date_fin_efect or date_fin_efect is null
)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_STAT
  DROP CONSTRAINT AFW_12_STAT_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_STAT ADD (
  CONSTRAINT AFW_12_STAT_CK1
  CHECK ((ref_group_stat is null and ref_struc_aplic is not null) or (
ref_group_stat is not null and ref_struc_aplic is null))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_STRUC_APLIC
  DROP CONSTRAINT AFW_12_STRUC_APLIC_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_STRUC_APLIC
  DROP CONSTRAINT AFW_12_STRUC_APLIC_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_12_STRUC_APLIC
  DROP CONSTRAINT AFW_12_STRUC_APLIC_CK3;

ALTER TABLE APEXFRAMEWORK.AFW_12_STRUC_APLIC ADD (
  CONSTRAINT AFW_12_STRUC_APLIC_CK1
  CHECK ((INDIC_EXTRA_TOUT = 'N' AND TAIL_TABL_EXTRA is not null) OR
INDIC_EXTRA_TOUT in ('O', 'HE'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_12_STRUC_APLIC ADD (
  CONSTRAINT AFW_12_STRUC_APLIC_CK2
  CHECK (TAIL_TABL_EXTRA > 0)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_12_STRUC_APLIC ADD (
  CONSTRAINT AFW_12_STRUC_APLIC_CK3
  CHECK (
(indic_dispn_docmn = 'O' and nom_struc_acces_don is not null)
or
(indic_dispn_docmn = 'N'))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS
  DROP CONSTRAINT AFW_12_UTILS_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS
  DROP CONSTRAINT AFW_12_UTILS_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS ADD (
  CONSTRAINT AFW_12_UTILS_CK1
  CHECK (
  regexp_like (code_utils,'^[[:alnum:]]+(_[[:alnum:]]+)*$')
)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_12_UTILS ADD (
  CONSTRAINT AFW_12_UTILS_CK2
  CHECK (
courl is null
or
regexp_like (courl,'^[A-Za-z0-9''._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_ETAPE_TUTRL
  DROP CONSTRAINT AFW_13_ETAPE_TUTRL_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_ETAPE_TUTRL
  DROP CONSTRAINT AFW_13_ETAPE_TUTRL_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_13_ETAPE_TUTRL
  DROP CONSTRAINT AFW_13_ETAPE_TUTRL_CK3;

ALTER TABLE APEXFRAMEWORK.AFW_13_ETAPE_TUTRL ADD (
  CONSTRAINT AFW_13_ETAPE_TUTRL_CK1
  CHECK (indic_afich_toile_fond in ('O','N'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_13_ETAPE_TUTRL ADD (
  CONSTRAINT AFW_13_ETAPE_TUTRL_CK2
  CHECK (indic_mode_reflx in ('O','N'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_13_ETAPE_TUTRL ADD (
  CONSTRAINT AFW_13_ETAPE_TUTRL_CK3
  CHECK (indic_afich_orphe in ('O','N'))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_INSTA_REGN_PILTB
  DROP CONSTRAINT AFW_13_INSTA_REGN_PILTB_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_INSTA_REGN_PILTB ADD (
  CONSTRAINT AFW_13_INSTA_REGN_PILTB_CK1
  CHECK (
  indic_regn_activ = 'O'
  or
  indic_regn_activ = 'N'
)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_ITEM_MENU
  DROP CONSTRAINT AFW_13_ITEM_MENU_CK01;

ALTER TABLE APEXFRAMEWORK.AFW_13_ITEM_MENU ADD (
  CONSTRAINT AFW_13_ITEM_MENU_CK01
  CHECK ((ref_page is not null and forml_valr_url is null) or (ref_page is
null and forml_valr_url is not null)
        or (ref_page is null and forml_valr_url is null))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_LISTE_NAVGT
  DROP CONSTRAINT AFW_13_LISTE_NAVGT_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_LISTE_NAVGT ADD (
  CONSTRAINT AFW_13_LISTE_NAVGT_CK1
  CHECK (
    dnr_ref_aplic is not null and ref_domn is null
    or
    dnr_ref_aplic is null and ref_domn is not null
)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_IR_COLN
  DROP CONSTRAINT AFW_13_PAGE_IR_COLN_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_IR_COLN
  DROP CONSTRAINT AFW_13_PAGE_IR_COLN_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_IR_COLN ADD (
  CONSTRAINT AFW_13_PAGE_IR_COLN_CK1
  CHECK (TYPE_LARGR in ('POINT', 'POURC', 'POUCE', 'RELTF'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_13_PAGE_IR_COLN ADD (
  CONSTRAINT AFW_13_PAGE_IR_COLN_CK2
  CHECK (
        type_largr is not null and largr is not null
        or
        type_largr is null and largr is null)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_13_RESRC
  DROP CONSTRAINT AFW_13_RESRC_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_13_RESRC
  DROP CONSTRAINT AFW_13_RESRC_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_13_RESRC
  DROP CONSTRAINT AFW_13_RESRC_CK3;

ALTER TABLE APEXFRAMEWORK.AFW_13_RESRC
  DROP CONSTRAINT AFW_13_RESRC_CK4;

ALTER TABLE APEXFRAMEWORK.AFW_13_RESRC ADD (
  CONSTRAINT AFW_13_RESRC_CK1
  CHECK (indic_stock_meme_reprt in ('O', 'N'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_13_RESRC ADD (
  CONSTRAINT AFW_13_RESRC_CK2
  CHECK ((indic_stock_meme_reprt = 'O' and ref_dosr_virtl is not null) or
ref_dosr_virtl is null)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_13_RESRC ADD (
  CONSTRAINT AFW_13_RESRC_CK3
  CHECK (type_resrc in ('COMPS', 'SIMPL'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_13_RESRC ADD (
  CONSTRAINT AFW_13_RESRC_CK4
  CHECK (
   (REF_PRODT is not null and REF_STRUC_APLIC is null and REF_PLUGN is null)
   or
   (REF_PRODT is null and REF_STRUC_APLIC is not null and REF_PLUGN is null)
   or
   (REF_PRODT is null and REF_STRUC_APLIC is null and REF_PLUGN is not null)
   )
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_14_DOMN_VALR
  DROP CONSTRAINT AFW_14_DOMN_VALR_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_14_DOMN_VALR
  DROP CONSTRAINT AFW_14_DOMN_VALR_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_14_DOMN_VALR ADD (
  CONSTRAINT AFW_14_DOMN_VALR_CK1
  CHECK ((   indic_systm = 'O')  or (   indic_systm = 'N'     and
ref_type_domn_valr is not null))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_14_DOMN_VALR ADD (
  CONSTRAINT AFW_14_DOMN_VALR_CK2
  CHECK ((REF_PRODT is null and DNR_REF_PRODT is null and REF_DOMN is not null) or  (REF_PRODT is not null and DNR_REF_PRODT is not null and REF_DOMN is null))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_17_PROFL_COURL
  DROP CONSTRAINT AFW_17_PROFL_COURL_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_17_PROFL_COURL
  DROP CONSTRAINT AFW_17_PROFL_COURL_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_17_PROFL_COURL
  DROP CONSTRAINT AFW_17_PROFL_COURL_CK3;

ALTER TABLE APEXFRAMEWORK.AFW_17_PROFL_COURL ADD (
  CONSTRAINT AFW_17_PROFL_COURL_CK1
  CHECK (protc_entra in ('IMAP', 'POP'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_17_PROFL_COURL ADD (
  CONSTRAINT AFW_17_PROFL_COURL_CK2
  CHECK ((adres_suprt is not null and nom_suprt is not null and indic_ajout_suprt_cci is not null) or (adres_suprt is null and nom_suprt is null and indic_ajout_suprt_cci is null))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_17_PROFL_COURL ADD (
  CONSTRAINT AFW_17_PROFL_COURL_CK3
  CHECK (indic_ajout_suprt_cci in ('O','N'))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_19_BOUTN
  DROP CONSTRAINT AFW_19_BOUTN_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_19_BOUTN ADD (
  CONSTRAINT AFW_19_BOUTN_CK1
  CHECK ((ID_TEMPL_BOUTN is not null and TEMPL_BOUTN is null)
        or
        (ID_TEMPL_BOUTN is null and TEMPL_BOUTN is not null)
        or
        (ID_TEMPL_BOUTN is null and TEMPL_BOUTN is null)
       )
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_19_CLE
  DROP CONSTRAINT AFW_19_CLE_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_19_CLE ADD (
  CONSTRAINT AFW_19_CLE_CK1
  CHECK ((CODE_KEYPR is not null and CODE_KEYDW is null)
        or
        (CODE_KEYPR is null and CODE_KEYDW is not null)
        or
        (CODE_KEYPR is null and CODE_KEYDW is null)
       )
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT
  DROP CONSTRAINT AFW_19_FONCT_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT
  DROP CONSTRAINT AFW_19_FONCT_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT
  DROP CONSTRAINT AFW_19_FONCT_CK3;

ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT
  DROP CONSTRAINT AFW_19_FONCT_CK4;

ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT
  DROP CONSTRAINT AFW_19_FONCT_CK5;

ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT ADD (
  CONSTRAINT AFW_19_FONCT_CK1
  CHECK ((REF_DV_TYPE_ATRIB1 is not null and VALR_DEFT_ATRIB1 is not null and
TITRE_ATRIB1 is not null) or
  (REF_DV_TYPE_ATRIB1 is null and VALR_DEFT_ATRIB1 is null and TITRE_ATRIB1 is
null))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT ADD (
  CONSTRAINT AFW_19_FONCT_CK2
  CHECK ((REF_DV_TYPE_ATRIB2 is not null and VALR_DEFT_ATRIB2 is not null and
TITRE_ATRIB2 is not null) or
  (REF_DV_TYPE_ATRIB2 is null and VALR_DEFT_ATRIB2 is null and TITRE_ATRIB2 is
null))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT ADD (
  CONSTRAINT AFW_19_FONCT_CK3
  CHECK ((REF_DV_TYPE_ATRIB3 is not null and VALR_DEFT_ATRIB3 is not null and
TITRE_ATRIB3 is not null) or
  (REF_DV_TYPE_ATRIB3 is null and VALR_DEFT_ATRIB3 is null and TITRE_ATRIB3 is
null))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT ADD (
  CONSTRAINT AFW_19_FONCT_CK4
  CHECK ((REF_DV_TYPE_ATRIB4 is not null and VALR_DEFT_ATRIB4 is not null and
TITRE_ATRIB4 is not null) or
  (REF_DV_TYPE_ATRIB4 is null and VALR_DEFT_ATRIB4 is null and TITRE_ATRIB4 is
null))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_19_FONCT ADD (
  CONSTRAINT AFW_19_FONCT_CK5
  CHECK ((REF_DV_TYPE_ATRIB5 is not null and VALR_DEFT_ATRIB5 is not null and
TITRE_ATRIB5 is not null) or
  (REF_DV_TYPE_ATRIB5 is null and VALR_DEFT_ATRIB5 is null and TITRE_ATRIB5 is
null))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_19_SPECF_FONCT
  DROP CONSTRAINT AFW_19_SPECF_FONCT_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_19_SPECF_FONCT ADD (
  CONSTRAINT AFW_19_SPECF_FONCT_CK1
  CHECK ((ref_item is not null and ref_page is null) or (ref_item is null and
ref_page is not null))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_20_DEPLM
  DROP CONSTRAINT AFW_20_DEPLM_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_20_DEPLM ADD (
  CONSTRAINT AFW_20_DEPLM_CK1
  CHECK (
  (ref_modl is not null and ref_modl_parmt is null)
  or
  (ref_modl is null and ref_modl_parmt is not null)
)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE
  DROP CONSTRAINT AFW_21_PLUGN_ARBRE_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE
  DROP CONSTRAINT AFW_21_PLUGN_ARBRE_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE
  DROP CONSTRAINT AFW_21_PLUGN_ARBRE_CK3;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_CK1
  CHECK (
 (nom_table is not null and
 coln_titre is not null and
 coln_valr is not null and
 coln_id is not null and
 coln_id_parnt is not null
 )
 or
 (nom_table is null and
 coln_titre is null and
 coln_valr is null and
 coln_id is null and
 coln_id_parnt is null)
 )
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_CK2
  CHECK (type_icone_noeud in ('SIMPL', 'COMPS','RESRC'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_CK3
  CHECK (mode_cache in ('SESN','UTILS','AUCUN'))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD
  DROP CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK2;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD
  DROP CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK3;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD
  DROP CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK4;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD
  DROP CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK5;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD
  DROP CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK6;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD
  DROP CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK7;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK2
  CHECK (INDIC_CREER_NOEUD in ('O','N'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK3
  CHECK (INDIC_OUVRI_NOEUD in ('O','N'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK4
  CHECK (INDIC_FERMR_NOEUD in ('O','N'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK5
  CHECK (INDIC_SELCT_NOEUD in ('O','N'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK6
  CHECK (INDIC_SUPRM_NOEUD in ('O','N'))
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ARBRE_NOEUD ADD (
  CONSTRAINT AFW_21_PLUGN_ARBRE_NOEUD_CK7
  CHECK ((ref_ocurn_resrc is not null and ref_resrc is null) or (
ref_ocurn_resrc is null and ref_resrc is not null))
  DISABLE NOVALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_CALND
  DROP CONSTRAINT AFW_21_PLUGN_CALND_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_CALND ADD (
  CONSTRAINT AFW_21_PLUGN_CALND_CK1
  CHECK (
  nombr_mints_inter <= 1440
)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ITEM_MENU
  DROP CONSTRAINT AFW_21_PLUGN_ITEM_MENU_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_21_PLUGN_ITEM_MENU ADD (
  CONSTRAINT AFW_21_PLUGN_ITEM_MENU_CK1
  CHECK (
  ref_dv_contn_item_menu is not null and niv_item = 1
  or
  ref_dv_contn_item_menu is null
)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_23_APLIC_MODL_RECHR
  DROP CONSTRAINT AFW_23_APLIC_MODL_RECHR_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_23_APLIC_MODL_RECHR ADD (
  CONSTRAINT AFW_23_APLIC_MODL_RECHR_CK1
  CHECK (NOMBR_MAXIM_RESLT < 1000)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_23_DETL_APLIC_MODL_RECHR
  DROP CONSTRAINT AFW_23_DETL_APLIC_MODL_REC_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_23_DETL_APLIC_MODL_RECHR ADD (
  CONSTRAINT AFW_23_DETL_APLIC_MODL_REC_CK1
  CHECK (PERTN <= 100)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_PARMT_TYPE_PUBLC
  DROP CONSTRAINT AFW_25_PARMT_TYPE_PUBLC_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_PARMT_TYPE_PUBLC
  DROP CONSTRAINT AFW_25_PARMT_TYPE_PUBLC_CK3;

ALTER TABLE APEXFRAMEWORK.AFW_25_PARMT_TYPE_PUBLC ADD (
  CONSTRAINT AFW_25_PARMT_TYPE_PUBLC_CK1
  CHECK (ref_type_publc is not null and ref_engin is null
 or
 ref_type_publc is null and ref_engin is not null)
  ENABLE VALIDATE);

ALTER TABLE APEXFRAMEWORK.AFW_25_PARMT_TYPE_PUBLC ADD (
  CONSTRAINT AFW_25_PARMT_TYPE_PUBLC_CK3
  CHECK ((INDIC_PRESN_APPEL = 'N' AND ORDRE_PRESN IS NOT NULL) OR (INDIC_PRESN_APPEL != 'N'))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_25_VALR_ELEMN_CONFG
  DROP CONSTRAINT AFW_25_VALR_ELEMN_CONFG_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_25_VALR_ELEMN_CONFG ADD (
  CONSTRAINT AFW_25_VALR_ELEMN_CONFG_CK1
  CHECK (valr_varch is not null and valr_numbr is null and valr_date is null
 or
 valr_varch is null and valr_numbr is not null and valr_date is null
 or
 valr_varch is null and valr_numbr is null and valr_date is not null)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT
  DROP CONSTRAINT AFW_37_GADGT_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT ADD (
  CONSTRAINT AFW_37_GADGT_CK1
  CHECK (DATE_DEBUT_EFECT <= DATE_FIN_EFECT OR DATE_FIN_EFECT IS NULL)
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT_PARMT
  DROP CONSTRAINT AFW_37_GADGT_PARMT_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT_PARMT ADD (
  CONSTRAINT AFW_37_GADGT_PARMT_CK1
  CHECK (INDIC_OBLIG IN ('N', 'O'))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT_PARMT_RACRC
  DROP CONSTRAINT AFW_37_GADGT_PARMT_RACRC_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_37_GADGT_PARMT_RACRC ADD (
  CONSTRAINT AFW_37_GADGT_PARMT_RACRC_CK1
  CHECK (indic_genrq in ('N','O'))
  ENABLE VALIDATE);


ALTER TABLE APEXFRAMEWORK.AFW_37_LIEN_GADGT_PARMT_RACRC
  DROP CONSTRAINT AFW_37_LIEN_GADGT_PARMT_R_CK1;

ALTER TABLE APEXFRAMEWORK.AFW_37_LIEN_GADGT_PARMT_RACRC ADD (
  CONSTRAINT AFW_37_LIEN_GADGT_PARMT_R_CK1
  CHECK ((ref_gadgt_parmt_racrc is null and nom is not null and forml_don is not null)
or (ref_gadgt_parmt_racrc is not null and nom is null and forml_don is null))
  ENABLE VALIDATE);
