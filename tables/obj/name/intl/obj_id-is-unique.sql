--
-- This query demonstrats that the
-- obj_id is unique in obj_name_intl.
--
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
