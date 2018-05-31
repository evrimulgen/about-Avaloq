select
  cot.name     meta_type_name,
  cok.name     key_name,
  cok.user_id  key_user_id,
  cok.intl_id  key_intl_id,
  cok.descn    key_description
from
  code_obj_key  cok join
  code_obj_type cot on cok.obj_type_id = cot.id
where
  lower(descn) like '%avaloq%'
order by
  cot.name,
  lower(descn);