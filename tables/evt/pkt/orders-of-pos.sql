--
-- Find the doc ids (orders) that pertain to a specific
-- position.
--
select
   doc.order_nr             doc_order_nr,
   evt.doc_id,
   evt.version_nr           evt_version_nr,
   evt.version_atrx_seq_nr  version_atrx_seq_nr,
   doc.wfc_status_id,
   doc.wfc_action_id,
   doc.meta_typ_id          doc_meta_type_id,
   doc.order_type_grp_id,
   evt.meta_typ_id          evt_meta_type_id,
-- evt.order_type_id,
-- doc.order_type_id,
   oty.name                 order_type,
   doc.order_sub_type_id,   
-- evt.evt_status_id        evt_status_id,
   evs.name                 event_status,
   evt.bu_id                evt_bu_id,
   evt.pko_id               evt_pko_id,
-- pkt.pos_id               pos_id,
   pkt.evt_id               ,
   pkt.seq_nr               pkt_seq_nr,
   pkt.pko_id               pkt_pko_id,
   pkt.qty_1                pkt_qty,
   doc.linked_amount        doc_linked_amount,
   doc.amount               doc_amount,
-- pkt.qty_2,
-- pkt.qty_3,
   pkt.val_book_ref,
   pkt.val_book_pos,
   --
   doc.order_date           doc_order_date,
   doc.val_date             doc_val_date,
   doc.trx_date             doc_trx_date,
   doc.perf_date            doc_perf_date,
   --
   evt.done_date            evt_done_date,
   evt.val_date             evt_val_date,
   evt.trx_date             evt_trx_date,
   evt.perf_date            evt_perf_date,
   --
   pkt.done_date            pkt_done_date,
   pkt.val_date             pkt_val_date,
   pkt.trx_date             pkt_trx_date,
   pkt.perf_date            pkt_perf_date,
   --
   pkt.cont_sgn,
   pkt.doc_tab_id,
   pkt.bv_cmtd_id,
   pkt.bvg_ref,
   pkt.bvg_pos,
   pkt.tv_cmtd_id
from
  evt_pkt3        pkt                                    join
  evt3            evt on pkt.evt_id        = evt.id      join
  doc             doc on evt.doc_id        = doc.id      join
  code_evt_status evs on evt.evt_status_id = evs.id left join
  code_order_type oty on evt.order_type_id = oty.id
where
  pkt.pos_id = 42;
