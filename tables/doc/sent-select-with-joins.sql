select
           age.tabspc_name                 aging_tablespace_name,
           mty.name                        meta_typ_name,
           doc.order_nr                    order_nr,
           doc.order_date,
           doc.trx_date                    "trade date",       -- or transaction date?
           doc.val_date                    "value date",       -- or Valutadatum
           doc.perf_date                   "performance date",
   replace(dsx.book_text, chr(10), ' ')    "Stex book text"
           doc.amount,
           doc.linked_amount,
           doc.bp_1_id,
           doc.bp_2_id,
           doc.asset_id,
           pos_1.id,
           pos_1.instru_id                  pos_1_instru_id,
           doc.   pos_1_id,
           ass_nm.name                     "Position  1 name",
           doc   .pos_2_id,
           doc.cont_1_id,
           cnt_1_key.key_val                cont_1_nr,
           cnt_1_nm.name                    cont_1_name,
           doc.cont_2_id,
           doc.ordered_by,
           doc.ins_by_sec_user_id,
           doc.wfc_status_id,
           doc.wfc_action_id,
           doc.timestamp           order_time_stamp,
           oty.id                  order_type_id,
           oty.name                order_type_name
from
   doc                                                                                             join
   aging           age          on doc.aging_id      = age.id                                      join
   meta_typ        mty          on doc.meta_typ_id   = mty.id                                      join
   code_order_type oty          on doc.order_type_id = oty.id                                 left join
   obj             pos_1        on doc.pos_1_id      = pos_1.id                               left join
   obj_name        ass_nm       on pos_1.instru_id   = ass_nm.obj_id              and
                                   sysdate between ass_nm.date_valid and
                                                   ass_nm.date_valid_to           and
                                   ass_nm.lang_id = -1                                        left join
   obj_name        cnt_1_nm     on doc.cont_1_id     = cnt_1_nm.obj_id            and
                               sysdate between cnt_1_nm.date_valid    and
                                               cnt_1_nm.date_valid_to            and
                                 cnt_1_nm.lang_id = -1                                        left join
   doc_stex        dsx          on dsx.doc_id        = doc.id                                 left join
   obj_key         cnt_1_key    on doc.cont_1_id = cnt_1_key.obj_id                           left join
   code_obj_key    cnt_1_kyc    on cnt_1_key.obj_key_id = cnt_1_kyc.id  and
                                    cnt_1_kyc.intl_id = 'cont_nr'                             left join
   doc_stex_extn   dse          on dse.doc_id = doc.id
where
   doc.id = 42;
