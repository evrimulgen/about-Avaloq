select
   src.id                   src_id,
   src.name                 src_name,
   typ.name                 src_type,
   own.name                 src_owner,
   src.has_ovr              src_has_overwrite,
   src.is_gen,
   sts.name                 src_status,
   act.name                 src_action,
   src.src_action_timestamp,
   --------------------------------------
   src.ref_id               src_ref_id,
-- ref.obj_type_id          ref_obj_type_id,
   rot.name                 ref_obj_type,
   coalesce(
     tly.user_id,
     null --ttm.user_id
   )                        ref_user_id,
   coalesce(
      tly.src_id,         
      ttm.src_id
   )                        ref_src_id,
   --------------------------------------
   src.src_action_err,
   src.src_action_warn,
   src.src_post_prc_pend
from
   src                                                         join
   code_src_owner   own on src.src_owner_id  = own.id          join
   code_src_status  sts on src.src_status_id = sts.id          join
   code_src_type    typ on src.src_type_id   = typ.id          join
   code_src_action  act on src.src_action_id = act.id     left join
   obj              ref on src.ref_id        = ref.id     left join
   code_obj_type    rot on ref.obj_type_id   = rot.id     left join
   obj_task_layout  tly on src.ref_id        = tly.obj_id left join
   obj_task_templ   ttm on src.ref_id        = ttm.obj_id
