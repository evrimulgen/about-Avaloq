select
   tskpar.par_name,
   parnam.text                 par_label,
   tskpar.descn                par_description,
-- tskpar.style_id             par_style_id,
   style .name                 style,
   tskpar.type                 par_type,
   tskpar.ctype                par_ctype,
   tskpar.cond                 par_condition,
   tskpar.lookup_fld           par_lookup_fld,
   tskpar.is_list_of           par_is_list_of,
   tskpar.mand                 par_mandatory,
-- tskpar.out_text_label_key,
   tskpar.prompt               par_prompt,
-- tskpar.order_by_form        par_order_by_form,
   tskpar.subst                par_subst,
   tskpar.abstr                par_abstr,
-- tskpar.collect_expd_id      par_collect_expd_id,
   colexp.name                 collection_expansion,
   tskpar.list_form_id         par_list_form_id,
   tskpar.item_form_id         par_item_form_id,
   tskpar.is_obslt             par_is_obslt
from
   obj_task_def         tskdef                                                         join
   obj_task_def_par     tskpar on tskdef.obj_id  = tskpar.task_def_id             left join
   out_text_norm        parnam on parnam.key     = tskpar.out_text_label_key and
                                  parnam.lang_id = -1                             left join
   code_collect_expd    colexp on colexp.id      = tskpar.collect_expd_id         left join
   code_style           style  on style .id      = tskpar.style_id
where
   tskdef.obj_id = 87190
order by
   tskpar.order_by_form;
