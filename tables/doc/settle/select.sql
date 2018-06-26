select
-- doc.aging_id,
-- doc.meta_typ_id,
   doc.timestamp             doc_timestamp,
   doc.trx_date              doc_trx_date,
   doc.val_date              doc_val_date,
   doc.perf_date             doc_perf_date,
-- doc.order_type_id         doc_order_type_id,
   ordtyp.name               order_type,
   doc.order_sub_type_id     doc_order_sub_type_id,
   doc.doc_role_id           doc_role_id,
   doc.amount                doc_amount,
   doc.bp_1_id               doc_bp_1_id,
   doc.bp_2_id               doc_bp_2_id,
   doc.asset_id              doc_asset_id,
   doc.ins_by_sec_user_id    doc_ins_by_sec_user_id,
   doc.wfc_status_id         doc_wfc_status_id,
   doc.wfc_action_id         doc_wfc_action_id,
-- settle.aging_id
   doc.*,
   settle.instr_val_date,
   settle.meta_msg_book_1_id,
   settle.meta_msg_book_2_id,
   settle.meta_msg_book_3_id,
   settle.book_date_plan,
   settle.meta_msg_cancel_id,
   msgspec.name  msg_spec_name
from
   doc                                                                  join
   code_order_type ordtyp  on doc   .order_type_id    = ordtyp .id      join
   doc_settle      settle  on settle.doc_id           = doc    .id left join
   meta_msg        msgspec on settle.meta_msg_spec_id = msgspec.id
where
   settle.doc_id = 42;
