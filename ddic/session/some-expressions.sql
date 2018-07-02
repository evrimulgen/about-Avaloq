select
   script#.eval_expr('session.id'                     ) id               , -- Session ID
   script#.eval_expr('session.name'                   ) name             , --
   script#.eval_expr('session.global_name'            ) global_name      , -- Global name of DB,
   script#.eval_expr('session.avq_release'            ) avq_release      ,
   script#.eval_expr('session.curr_task_exec_id'      ) curr_task_exec_id, -- Current task execution (if present)
   script#.eval_expr('session.is_intf'                ) is_intf          , -- GUI session?
   script#.eval_expr('session.is_batch'               ) is_batch         ,
   script#.eval_expr('session.bu_id'                  ) bu_id            ,
   script#.eval_expr('session.user_id'                ) user_id          ,
   script#.eval_expr('session.oracle_user'            ) oracle_user      ,
   script#.eval_expr('session.today'                  ) today            ,
   script#.eval_expr('session.time'                   ) time             ,
   script#.eval_expr('session.fld("code_obj_type", 5)') fld              ,
   script#.eval_expr('session.text("LABEL.LAST_DATE")') text                -- Access out_text
-- script#.eval_expr('session.eval_expr("today")'     ) today
from
  dual
