--
--  The value in tab_type corresponds to the four
--  DDIC types
--    - mem
--    - tab
--    - dtm
--    - pillar
--
select
--count(*),
  tab_type
from
  meta_script_tab
group by
  tab_type
order by
  count(*) desc;
