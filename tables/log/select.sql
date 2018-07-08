select
   log.id,
-- log.log_type_id,
   lgt.name                   log_type,
   log.err_id,
-- log.log_trig_type_id,
   ltt.name                   trigger_type,
   log.log_trig_id,
   log.log_trig_item_id,
-- log.log_status_id,
   lst.name                   log_status,
   log.is_ack,
   log.timestamp,
   log.task_id,
-- log.sec_user_id,
   usr.name                   user_name,
   log.session_id,
   log.ctx,
   log.call_stack,
   log.err_stack,
   log.text,
   log.bu_id,
   log.sec_setup,
   log.session_inst_id,
   log.session_serial#,
   log.edition_name
from
   log                log                                       join
   code_log_type      lgt on log.log_type_id      = lgt.id      join
   sec_user           usr on log.sec_user_id      = usr.id left join
   code_log_trig_type ltt on log.log_trig_type_id = ltt.id left join
   code_log_status    lst on log.log_status_id    = lst.id
;
