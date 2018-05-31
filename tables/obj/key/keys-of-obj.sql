select
  cky.name    key_name,
  oky.key_val key_value,
  cky.descn   key_description
from
  obj_key      oky                      join
  code_obj_key cky on oky.obj_key_id = cky.id
where
  oky.obj_id = 42;