select
   mmg.id,
-- mmg.netw_id,
   net.name                        netw_name,
   mmg.dir,
   mmg.user_id,
   mmg.intl_id,
   mmg.name,
   mmg.descn,
   mmg.src_name                    msg_src_name,
   str.src_name                    msg_struct_src_name,
   str.intl_id                     msg_struct_intl_id,
   mmg.meta_msg_gen_id,
   mmg.hdr_def,
   mmg.trl_def,
   mmg.type,
   mmg.settle_type,
   mmg.src_pos_type,
   mmg.target_pos_type,
-- mmg.order_type_id,
   odt.name                        order_type,
-- mmg.meta_msg_struct_id
   mmg.send_date_plan,
   mmg.msg_status_start_id,
   mmg.build_stmt,
   mmg.hdl_stmt,
   mmg.prcq_id,
   mmg.is_ami,
   mmg.activ,
   mmg.doc_id_expr,
   mmg.ld_doc,
   mmg.is_doc_link_likely
from
   meta_msg           mmg                                     left join
   code_netw          net on net.id = mmg.netw_id             left join
   meta_msg_struct    str on str.id = mmg.meta_msg_struct_id  left join
   code_order_type    odt on odt.id = mmg.order_type_id
order by
   net.activ nulls last,
   net.name;
