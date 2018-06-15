select
--count(*),
  ad.data_type,
  case when tb.table_name is not null then 'Is a table' else null end "Table ?"
from
  code_obj_add  ad      left join
  dba_tables    tb on upper(ad.data_type) = tb.table_name
where
  ad.data_type not like '%$%'
group by
  ad.data_type,
  case when tb.table_name is not null then 'Is a table' else null end
having
  count(*) > 1
order by
  count(*) desc
--
-- DATA_TYPE                                Table ?
-- ---------------------------------------- ----------
-- text
-- number
-- code_const                               Is a table
-- date
-- record
-- obj_asset                                Is a table
-- boolean
-- obj_bp                                   Is a table
-- obj_collect                              Is a table
-- obj_country                              Is a table
-- timestamp with time zone
-- code_perf_ncf_type                       Is a table
-- obj_pos                                  Is a table
-- obj_person                               Is a table
-- obj_curry
-- code_obj_class                           Is a table
-- obj_md                                   Is a table
-- obj                                      Is a table
-- obj_macc
-- code_fund_fee_period                     Is a table
-- obj_cont                                 Is a table
-- obj_docm                                 Is a table
-- obj_bmrk                                 Is a table
-- code_uk_tax_relv                         Is a table
-- code_perf_cf_rule_set                    Is a table
-- code_lang                                Is a table
-- code_salesopp_reason                     Is a table
-- code_sec_user_v
-- obj_prod                                 Is a table
--
