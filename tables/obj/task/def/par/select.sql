select
   tskpar.par_name,
   tskpar.type                 par_type,
   tskpar.ctype                par_ctype,
   tskpar.cond                 par_condition,
   tskpar.lookup_fld           par_lookup_fld,
   tskpar.is_list_of           par_is_list_of,
   tskpar.mand                 par_mandatory,
   tskpar.out_text_label_key,
   tskpar.prompt               par_prompt,
   tskpar.order_by_form        par_order_by_form,
   tskpar.descn                par_description,
   tskpar.subst                par_subst,
   tskpar.abstr                par_abstr,
   tskpar.style_id             par_style_id,
   tskpar.collect_expd_id      par_collect_expd_id,
   tskpar.list_form_id         par_list_form_id,
   tskpar.item_form_id         par_item_form_id,
   tskpar.is_obslt             par_is_obslt
from
   obj_task_def         tskdef     join
   obj_task_def_par     tskpar on tskdef.obj_id = tskpar.task_def_id
where
   tskdef.obj_id = 87190;
