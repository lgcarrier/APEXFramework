SET DEFINE OFF;
create or replace force view vd_i_afw_13_liste_navgt
(
  seqnc
 ,ref_page
 ,libl
 ,page
 ,sspc
 ,sapc
 ,sspi
 ,sapi
 ,scpi
 ,date_creat
 ,utils_creat
 ,date_modfc
 ,utils_modfc
 ,ordre_presn
 ,code
 ,indic_reint_sidf
 ,aplic
 ,dnr_ref_aplic
 ,css_icone_boots
 ,ref_domn
)
as
  select seqnc
        ,ref_page
        ,libl
        ,page
        ,sspc
        ,sapc
        ,sspi
        ,sapi
        ,scpi
        ,date_creat
        ,utils_creat
        ,date_modfc
        ,utils_modfc
        ,ordre_presn
        ,code
        ,indic_reint_sidf
        ,aplic
        ,dnr_ref_aplic
        ,css_icone_boots
        ,ref_domn
    from afw_13_liste_navgt
/
