SET DEFINE OFF;
create or replace force view vd_i_afw_25_par_pub_tra_exect
(
  ref_travl_publc
 ,valr_numbr1
 ,valr_varch1
 ,valr_date1
 ,valr_numbr2
 ,valr_varch2
 ,valr_date2
 ,valr_numbr3
 ,valr_varch3
 ,valr_date3
 ,valr_numbr4
 ,valr_varch4
 ,valr_date4
 ,valr_numbr5
 ,valr_varch5
 ,valr_date5
 ,valr_numbr6
 ,valr_varch6
 ,valr_date6
 ,valr_numbr7
 ,valr_varch7
 ,valr_date7
 ,valr_numbr8
 ,valr_varch8
 ,valr_date8
 ,valr_numbr9
 ,valr_varch9
 ,valr_date9
 ,valr_numbr10
 ,valr_varch10
 ,valr_date10
 ,ref_travl
 ,seqnc
)
as
  select ref_travl_publc
        ,valr_numbr1
        ,valr_varch1
        ,valr_date1
        ,valr_numbr2
        ,valr_varch2
        ,valr_date2
        ,valr_numbr3
        ,valr_varch3
        ,valr_date3
        ,valr_numbr4
        ,valr_varch4
        ,valr_date4
        ,valr_numbr5
        ,valr_varch5
        ,valr_date5
        ,valr_numbr6
        ,valr_varch6
        ,valr_date6
        ,valr_numbr7
        ,valr_varch7
        ,valr_date7
        ,valr_numbr8
        ,valr_varch8
        ,valr_date8
        ,valr_numbr9
        ,valr_varch9
        ,valr_date9
        ,valr_numbr10
        ,valr_varch10
        ,valr_date10
        ,ref_travl
        ,seqnc
    from afw_25_parmt_publc_travl_exect
/
