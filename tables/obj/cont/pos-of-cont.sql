--
--  Find positions (assets) within a container.
--
select
  pos.id             pos_id,
  --pos_key.*,
  pos_type.name      pos_type    ,  -- Always Position ?
  pos_sub_type.name  pos_sub_type,  -- Current Acount, Security, Interim Account ...
  ass.curry_nom_id   ass_curry_nom_id,
  ass_name.name      asset_name,
  --
  -- Join asset with classification tables to find more info
  --
 (select cn.name from
    obj_class        cl                              join
    code_obj_classif ci on cl.obj_classif_id = ci.id join
    code_obj_class   cn on cl.obj_class_id   = cn.id
  where
    ci.intl_id = 'ass_al' and
    cl.obj_id = ass.obj_id)  asset_group,
    --
 (select cn.name from
    obj_class        cl                              join
    code_obj_classif ci on cl.obj_classif_id = ci.id join
    code_obj_class   cn on cl.obj_class_id   = cn.id
  where
    ci.intl_id = 'ass_group' and
    cl.obj_id = ass.obj_id)  investment_group,
    --
 (select cn.name from
    obj_class        cl                              join
    code_obj_classif ci on cl.obj_classif_id = ci.id join
    code_obj_class   cn on cl.obj_class_id   = cn.id
  where
    ci.intl_id = 'ass_type' and
    cl.obj_id = ass.obj_id)  ass_type,
    --
 (select cn.name from
    obj_class        cl                              join
    code_obj_classif ci on cl.obj_classif_id = ci.id join
    code_obj_class   cn on cl.obj_class_id   = cn.id
  where
    ci.intl_id = 'ass_pfm_class' and
    cl.obj_id = ass.obj_id)  pfm_marketset_class
from
  obj                pos                                                         join
  obj_asset          ass          on pos.instru_id    = ass.obj_id               join
  code_obj_type      pos_type     on pos_type.id      = pos.obj_type_id          join
  code_obj_sub_type  pos_sub_type on pos_sub_type.id  = pos.obj_sub_type_id left join
  --
  --
  obj_name           ass_name     on pos.instru_id    = ass_name.obj_id  and
                                     ass_name.lang_id = -1               and
                                     sysdate between ass_name.date_valid and
                                                     ass_name.date_valid_to
where
  pos.sec_owner_id = 42 -- Id of container
;
