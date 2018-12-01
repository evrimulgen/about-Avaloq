select
--count(*),
  tab_type
from
  meta_script_tab
group by
  tab_type
order by
  count(*) desc;
