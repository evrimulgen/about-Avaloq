select
  XYZ.OBJ_ID
  --
  --  Use the following subquery to determine the value of an objects
  --  classification.
  --
 (select cn.name from
    obj_class        cl                              join
    code_obj_classif ci on cl.obj_classif_id = ci.id join
    code_obj_class   cn on cl.obj_class_id   = cn.id
  where
    ci.intl_id = 'ass_al' and
    cl.obj_id = XYZ.OBJ_ID)               COLUMN_NAME_FOR_CLASS
from
  obj_asset XYZ
;
