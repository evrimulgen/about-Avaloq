select
  count(*),
  obj_id
from
  obj_name_intl
group by
  obj_id
having
  count(*) > 1
;
