--
-- META_SERIE_TAB seem to store the tables that are used
-- for pillers. The table is referenced by SERPIL.
--
select
   serie_type_id,
   seq_nr,
   tab_name,
   oracle_stmt      create_table_stmt,
   oracle_as_select as_select_stmt
from
   meta_serie_tab
order by
   tab_name;
