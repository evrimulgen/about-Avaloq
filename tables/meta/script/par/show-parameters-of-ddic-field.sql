select
   tab.id            ddic_id,
   fld.id            field_id,
   tab.name          ddic_name,
   fld.name          field_name,
   par.name          parameter_name,
   par.fld_domn      parameter_domain,
   par.fld_type      parameter_type,
   par.dflt          parameter_default_value,
   par.descn         parameter_description
from
   meta_script_tab tab                               join
   meta_script_fld fld on tab.id = fld.script_tab_id join
   meta_script_par par on fld.id = par.script_fld_id
where
   tab.name = 'obj_bp'    and
   fld.name = 'dflt_macc'
-- fld.id  = 280301
order by
   par.seq_nr;
