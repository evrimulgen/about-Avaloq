select
   tskdef.descn,
-- tskdef.src_id,
   src   .name                src_name,
   srcsts.name                src_status,
   srctyp.name                src_type,   -- Always "Taks"?
-- srcact.name                src_action,
   tskdef.form_id,
   tskdef.meta_out_id,
   tskdef.task_def_type_id,
   tskdef.type,
-- tskdef.batch,
-- tskdef.show,
-- tskdef.meta_proc_id,
   metprc.name                   meta_proc_name,
   metprc.package                meta_proc_package,
   tskdef.dtm_plh_tab,
   tskdef.script_ctx_id,
   tskdef.cover,
   tskdef.prl_degree_par_id,
   tskdef.exec_templ_only,
   tskdef.hira,
   tskdef.virtual,
   tskdef.impl_task_def_id,
   tskdef.task_has_no_par,
   tskdef.single_login
from
   obj_task_def    tskdef                                      join
   src             src    on tskdef.src_id       = src.id      join
   code_src_status srcsts on src.src_status_id   = srcsts.id   join
   code_src_type   srctyp on src.src_type_id     = srctyp.id   join
   code_src_action srcact on src.src_action_id   = srcact.id   join
   meta_proc       metprc on tskdef.meta_proc_id = metprc.id
where
   src.name              not like '%$%' and
   tskdef.dtm_plh_tab    not like '%$%'and
   metprc.name           not like '%$%' and
   metprc.package        not like '%$%'
order by
   lower(tskdef.descn)
;
