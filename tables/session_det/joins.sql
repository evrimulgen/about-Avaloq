select /*+ first_rows */
   sesdet.id,
-- sesdet.sid,
-- sesdet.serial,
-- sesdet.sec_user_id,
   sesusr.name               user_name,
   sesusr.oracle_user        oracle_user,
   usrtyp.name               user_type,
-- sesusr.ref_obj_id,
   refobn.name               ref_obj,
   sesdet.logon_time,
   sesdet.logoff_time,
   sesdet.ip_addr,
   sesdet.hostname,
   orases.status             ora_session_status,
   orases.command            ora_session_command,
-- orases.sql_id             ora_session_sqlid,
   orasql.sql_text,
   sesdet.session_ctx_list,
   sesdet.bu_restr_list,
   sesdet.crashed_or_killed,
   sesdet.session_type_id,
   sesdet.inst_id,
   sesdet.clt_gsid,
   sesdet.clt_lsid
from
   session_det       sesdet                                              join
   sec_user          sesusr on sesdet.sec_user_id  = sesusr.id      left join
   code_user_type    usrtyp on sesusr.user_type_id = usrtyp.id      left join
   obj_name_intl     refobn on sesusr.ref_obj_id   = refobn.obj_id  left join
   gv$session        orases on sesdet.sid          = orases.sid and
                               sesdet.serial       = orases.serial# left join
   gv$sql            orasql on orases.sql_id       = orasql.sql_id
order by
   sesdet.logon_time desc;
