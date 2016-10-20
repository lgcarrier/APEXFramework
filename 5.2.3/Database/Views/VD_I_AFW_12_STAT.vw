SET DEFINE OFF;
create or replace force view vd_i_afw_12_stat
(
  seqnc
 ,ref_struc_aplic
 ,ordre
 ,code
 ,nom
 ,descr
 ,date_creat
 ,utils_creat
 ,date_modfc
 ,indic_initl
 ,utils_modfc
 ,indic_stat_utils
 ,ref_group_stat
 ,dnr_ref_prodt
 ,libl_actio
 ,catgr_stat
 ,indic_final
 ,indic_insta_procs_aprob
 ,jour_prevu
 ,heure_prevu
 ,mint_prevu
 ,dnr_ref_domn
)
as
  select seqnc
        ,ref_struc_aplic
        ,ordre
        ,code
        ,nom
        ,descr
        ,date_creat
        ,utils_creat
        ,date_modfc
        ,indic_initl
        ,utils_modfc
        ,indic_stat_utils
        ,ref_group_stat
        ,dnr_ref_prodt
        ,libl_actio
        ,catgr_stat
        ,indic_final
        ,indic_insta_procs_aprob
        ,jour_prevu
        ,heure_prevu
        ,mint_prevu
        ,dnr_ref_domn
    from afw_12_stat
/
