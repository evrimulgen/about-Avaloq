select
  count(*),
  data_type
from
  code_doc_add
group by
  data_type
order by
  count(*) desc;