--
-- If ctx is not null, then it is a where condition
-- that can be applied on a table whose name is stored
-- in data_type.
--
select
  count(*),
  cda.data_type,
  cda.ctx,
  tab.table_name
from
  code_doc_add cda                                                  left join
  all_tables   tab  on upper(cda.data_type) = tab.table_name and
                       tab.owner = 'K' 
where
  ctx is not null
group by
  data_type,
  ctx,
  tab.table_name
order by
  count(*);
