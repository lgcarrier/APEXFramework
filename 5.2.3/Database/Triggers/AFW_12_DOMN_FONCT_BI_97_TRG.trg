SET DEFINE OFF;
create or replace trigger afw_12_domn_fonct_bi_97_trg
  before insert or update
  on afw_12_domn_fonct
  for each row
begin
  if :new.dnr_ref_domn is null
  then
    :new.dnr_ref_domn   := afw_04_contx_pkg.obten_seqnc_contx ('DOMN');
  end if;
end afw_12_domn_fonct_bi_97_trg;
/
