select
   net.id,
   net.intl_id,
   net.descn,
   net.name,
   net.user_id,
--net.msg_out_dlv_type_id,
   dto.name                        msg_out_dlv_type,
-- net.msg_in_dlv_type_id,
   dti.name                        msg_in_dlv_type,
   net.build_hdr_stmt,
   net.hdl_ack_stmt,
   net.parse_hdr_stmt,
   net.hdl_err_stmt,
   net.after_parse_stmt,
   net.on_dlv_stmt,
   net.trans_from,
   net.trans_to,
   net.fld_sep,
   net.tag_start,
   net.tag_end,
   net.body_start,
   net.body_end,
   net.hdr_def_in,
   net.hdr_def_out,
   net.hdr_len,
   net.send_date_plan,
   net.msg_status_start_id,
   net.clr_bp_id,
   net.in_prio,
   net.out_prio,
   net.allowed_char,
   net.subst_char,
   net.on_dsp_stmt,
   net.activ
from
   code_netw                    net                               left join
   code_msg_out_dlv_type dto on net.msg_out_dlv_type_id = dto.id  left join
   code_msg_in_dlv_type  dti on net.msg_in_dlv_type_id  = dti.id
order by
   net.activ nulls last,
   lower(net.name);
