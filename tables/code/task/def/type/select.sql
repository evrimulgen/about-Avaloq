select
  intl_id,
  name,
  report,
  task,
  query,
  msg
from
  code_task_def_type
order by
  report,
  task,
  query,
  msg;
--
-- INTL_ID              NAME                 REPORT TASK QUERY MSG
-- -------------------- -------------------- ------ ---- ----- ---
-- print                print only           +                    
-- show                 show only            +                    
-- print_show           print and show       +                    
-- subm                 submit only                 +             
-- subm_run             submit and run              +             
-- run                  run only                    +             
-- query                query                            +        
-- query_msg            query msg                              + 