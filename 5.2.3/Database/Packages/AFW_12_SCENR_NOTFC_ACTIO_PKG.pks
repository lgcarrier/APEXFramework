SET DEFINE OFF;
create or replace package afw_12_scenr_notfc_actio_pkg
as
  function obten_seqnc (pva_scenr_notfc_code   in varchar2
                       ,pva_actio_code         in varchar2
                       ,pnu_prodt              in vd_i_afw_12_scenr_notfc.ref_prodt%type default afw_11_prodt_pkg.obten_prodt_sesn)
    return vd_i_afw_12_scenr_notfc_actio.seqnc%type;


  function obten_code (pnu_seqnc   in vd_i_afw_12_scenr_notfc.seqnc%type
                      ,pnu_prodt   in vd_i_afw_12_scenr_notfc.ref_prodt%type default afw_11_prodt_pkg.obten_prodt_sesn)
    return vd_i_afw_12_scenr_notfc.code%type;
end afw_12_scenr_notfc_actio_pkg;
/
