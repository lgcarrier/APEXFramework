SET DEFINE OFF;
create or replace force view vd_i_afw_12_domn
(
  seqnc
 ,code
 ,nom
 ,descr
 ,date_creat
 ,utils_creat
 ,date_modfc
 ,utils_modfc
 ,type_travl_deft
 ,ref_profl_courl_notfc
 ,ref_profl_sms_notfc
 ,ref_compt_axiat_deft
 ,ref_modl_rechr_deft
 ,procd_authe_exter_afw
 ,procd_vald_niv_secrt_mot_passe
 ,procd_avant_conxn
 ,procd_apres_conxn
 ,procd_apres_decnx
 ,indic_demnd_activ_compt_utils
 ,procd_obten_infor_utils
 ,indic_authe_courl
)
as
  select seqnc
        ,code
        ,nom
        ,descr
        ,date_creat
        ,utils_creat
        ,date_modfc
        ,utils_modfc
        ,type_travl_deft
        ,ref_profl_courl_notfc
        ,ref_profl_sms_notfc
        ,ref_compt_axiat_deft
        ,ref_modl_rechr_deft
        ,procd_authe_exter_afw
        ,procd_vald_niv_secrt_mot_passe
        ,procd_avant_conxn
        ,procd_apres_conxn
        ,procd_apres_decnx
        ,indic_demnd_activ_compt_utils
        ,procd_obten_infor_utils
        ,indic_authe_courl
    from afw_12_domn
/
