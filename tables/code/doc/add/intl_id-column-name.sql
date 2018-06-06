--
--  The intl_id seems sometimes to refer to column names
--  in *_EXTN tables.
--
select
  cda.id           addition_id,
  cda.name         addition_name,
  mty.name         meta_typ,
  cda.data_type    addition_data_type,
  cda.ctx          addition_context,
  cda.intl2_id,
  col.table_name,
  col.column_name
from
  code_doc_add    cda                                                join
  meta_typ        mty on cda.meta_typ_id = mty.id                    join
  all_tab_columns col on upper(cda.intl_id) = col.column_name and
                         col.owner = 'K'
where
  cda.intl_id not in ('addr', 'addr_text', 'amount', 'bp', 'cont','iban');