select
   bgp.obj_id                bgp_obj_id,
-- ses.*,
   bgi.instn_id              bgp_instn_id,
   bgi.job_name              bgp_instn_job_name,
   bgi.thread_grp_name       bpg_instn_thread_group_name,
-- bgp.sec_user_init_id,
   bgp.stmt,
-- bgp.interval,
-- bgp.session_level_id,
-- bgp.session_reset,
-- bgp.prefix,
-- bgp.chk_exitcode,
   bgi.valid,
-- bgi.debug,
   bgi.signal_wait,
   bgi.cnt,
   bgi.cnt_err,
   bgi.cnt_reset,
   bgi.cnt_timestamp,
   bgi.avrg_hsecs,
   bgi.status_trans_time,
   bgi.last_heartbeat,
   bgi.last_action,
   bgi.thread_grp,
   bgi.thread,
   bgi.err_timestamp,
   bgi.last_log_id,
   bgi.last_extl_err,
   bgi.thread_name,
   bgi.session_inst_id,
   bgi.session_id,
   bgi.session_serial#,
   ses.username               oracle_session_username,
   ses.schemaname             oracle_session_schemaname,
   ses.status                 oracle_session_status,
   ses.module                 oracle_session_module,
   ses.action                 oracle_session_action,
   sql.sql_text,
   bgi.can_reconnect,
   obj_plsql.object_name      plsql_object,
   obj_entry.object_name      plsql_entry_object,
   ses.sid                    oracle_session_sid,
   ses.serial#                oracle_session_serial#,
   ses.taddr                  oracle_session_trx_address,
   bgp.max_instn_cnt          bgp_max_instance_count,
   bgp.dflt_instn_cnt         bgp_default_instance_count
from
   obj_bgp_instn bgi                                                           left join
   obj_bgp       bgp       on bgi.obj_id          = bgp.obj_id                 left join
   v$session     ses       on ses.sid             = bgi.session_id and
                              ses.serial#         = bgi.session_serial#        left join
   v$sql         sql       on ses.sql_id          = sql.sql_id                 left join
   dba_objects   obj_plsql on obj_plsql.object_id = ses.plsql_object_id        left join
   dba_objects   obj_entry on obj_entry.object_id = ses.plsql_entry_object_id
order by
   bgi.valid,
   bgi.obj_id,
   bgi.instn_id
;
