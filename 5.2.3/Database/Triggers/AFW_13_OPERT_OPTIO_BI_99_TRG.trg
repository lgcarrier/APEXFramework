SET DEFINE OFF;
create or replace trigger afw_13_opert_optio_bi_99_trg
  before insert
  on afw_13_opert_optio
  for each row
begin
  if :new.dnr_ref_prodt is null
  then
    :new.dnr_ref_prodt   := afw_07_sesn_pkg.gva_prodt_en_cours;
  end if;
end afw_13_opert_optio_bi_99_trg;
/
