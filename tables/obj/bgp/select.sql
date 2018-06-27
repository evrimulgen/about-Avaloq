select
   bgp     .obj_id,
   bgp_name.name                  bgp_name,
-- bgp     .sec_user_init_id,
   init_usr.name                  init_user,
   init_usr.oracle_user           init_user_oracle,
   bgp     .stmt,
   bgp     .interval,
-- bgp     .session_level_id,
   sess_lvl.name                  session_lvl,
   bgp     .session_reset,
-- bgp     .db_svc_id
   db_svc  .svc_name              db_service_name,
   db_svc  .descn                 db_service_description,
   bgp     .prefix,
   bgp     .max_instn_cnt,
   bgp     .dflt_instn_cnt,
   bgp     .chk_exitcode,
   bgp     .not_used_in_paytb
from
   obj_bgp            bgp                                                      join
   obj_name_intl      bgp_name on bgp.obj_id           = bgp_name.obj_id  left join
   sec_user           init_usr on bgp.sec_user_init_id = init_usr.id      left join
   code_session_level sess_lvl on bgp.session_level_id = sess_lvl.id      left join
   code_db_svc        db_svc   on bgp.db_svc_id        = db_svc  .id
;
