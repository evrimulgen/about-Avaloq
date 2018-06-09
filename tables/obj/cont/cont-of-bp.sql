--
-- Find containers that belong to given BPs.
--
select
  obj.id                obj_id,
  obj_owner_id          obj_owner_id,     -- Always equal to obj_cont.bp_id ?
  cont_name.name_intl   cont_name_intl,
  obj_type.name         obj_type,
  obj_sub_type.name     obj_sub_type,
  sbu_name.name         sbu_name,
  obj_cont.cont_type_id cont_type_id,     --Seems to correspond to obj.obj_sub_type_id
  ref_curry.name        ref_curry,
  acca.name             accounting_name
from
  obj                                                                             join
  obj_cont                        on obj.id           = obj_cont.obj_id           join
  code_obj_type      obj_type     on obj_type.id      = obj.obj_type_id           join
  code_obj_sub_type  obj_sub_type on obj_sub_type.id  = obj.obj_sub_type_id  left join
  obj_name           cont_name    on obj_cont.obj_id  = cont_name.obj_id and
                                     cont_name.lang_id = -1 and
                                     sysdate between cont_name.date_valid and
                                                     cont_name.date_valid_to left join
  obj_name           sbu_name     on sbu_name.obj_id  = obj.sbu_id and
                                     sbu_name.lang_id = -1 and
                                     sysdate between sbu_name.date_valid and
                                                     sbu_name.date_valid_to  left join
  obj_name           ref_curry    on ref_curry.obj_id = obj_cont.ref_curry_id and
                                     ref_curry.lang_id = -1 and
                                     sysdate between ref_curry.date_valid and
                                                     ref_curry.date_valid_to    left join
  code_acca          acca         on obj_cont.acca_id = acca.id
where
--
-- Query for BP 42 and 43 only
--
  obj_cont.bp_id  in (42, 43);
