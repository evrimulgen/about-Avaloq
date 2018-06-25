select
--count(*),
  fld_domn
from
  meta_script_fld
group by
  fld_domn
order by
  count(*) desc
--
-- base
-- obj
-- obj_id
-- table
-- id
-- action
--
