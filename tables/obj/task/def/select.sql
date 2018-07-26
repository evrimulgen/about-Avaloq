select
   out_text#.text('TASK_DEF.' || tskdef.obj_id)  task_name,            -- Compare with function out_text_def_cnv
   tskdef.meta_out_id                            task_id,              -- This meta out id seems to be what the Avaloq docu refers to as task id. Compare with meta_proc_id.
   tskdef.descn,
-- tskdef.src_id,
   src   .name                                   src_name,
   srcsts.name                                   src_status,
-- srctyp.name                                   src_type,             -- Always "Task"?
-- srcact.name                                   src_action,
   tskdef.form_id,
   tskdef.task_def_type_id,
   tsktyp.name                                   task_def_typ,
   tskdef.type,
-- tskdef.batch,
-- tskdef.show,
-- tskdef.meta_proc_id,
   metprc.package                                meta_proc_package, -- This seems to refer to a PL/SQL package
   metprc.name                                   meta_proc_name,
   tskdef.dtm_plh_tab,
   tskdef.script_ctx_id,
   tskdef.cover,
   tskdef.prl_degree_par_id,
   tskdef.exec_templ_only,
   tskdef.hira,
   tskdef.virtual,
   tskdef.impl_task_def_id,
   tskdef.task_has_no_par,
   tskdef.single_login,
   tsknam.name                                   task_name_obj_name
from
   obj_task_def       tskdef                                                  join
   src                src    on tskdef.src_id            = src.id             join
   code_src_status    srcsts on src.src_status_id        = srcsts.id          join
   code_src_type      srctyp on src.src_type_id          = srctyp.id          join
   code_src_action    srcact on src.src_action_id        = srcact.id          join
   meta_proc          metprc on tskdef.meta_proc_id      = metprc.id     left join
   code_task_def_type tsktyp on tskdef.task_def_type_id  = tsktyp.id     left join
   obj_name_intl      tsknam on tskdef.obj_id            = tsknam.obj_id
where
-- lower(tskdef.descn)       like '%pos%list%' and
   src.name              not like '%$%'        and
   tskdef.dtm_plh_tab    not like '%$%'        and
   metprc.name           not like '%$%'        and
   metprc.package        not like '%$%'
order by
  tskdef.meta_out_id
   -- lower(tskdef.descn)
;
