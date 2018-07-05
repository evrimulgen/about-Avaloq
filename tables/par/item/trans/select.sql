select
-- bpt.intl_id,
-- bpt.item_intl_id,
   bpt.raw_val,
   bpt.val,
   bpt.bu_id,
   bpt.sbu_id,
   bpt.mdf_seq_nr,
   bpt.valid_from,
   bpt.action,
   bpt.timestp,
   bpt.sec_user_id,
   bpt.osuser,
   bpt.machine,
   bpt.terminal,
   bpt.bu_grp_id,
   bpt.doc_id
from
   base_par_item_trans bpt
where
   bpt.intl_id      = 'avq.doc.credappl'            and
   bpt.item_intl_id = 'collat_alloc_det_task_templ'
order by
   bpt.timestp;
