select
  ctp.name       const_name,
  cvl.name       value,
  cvl.id         code_const_id
from
  code_const_type ctp join
  code_const      cvl on cvl.const_type_id = ctp.id
where
  ctp.id = 42;
