select
   age.id                 aging_id,
   age.period_start,
   age.period_end,
   ast.name               status,
   age.tabspc_name        table_space
from
   aging               age                                               join
   aging_entity_map    aem on age.aging_entity_id = aem.aging_entity_id  join
   code_aging_status   ast on age.aging_status_id = ast.id
where
   aem.tab = 'MSG'                                      and
   sysdate between age.period_start and age.period_end
;
