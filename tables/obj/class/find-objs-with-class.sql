--
--     Select the obj's that are have a specific class.
--
select /*+ first_rows parallel(16) */
  obj.id                obj_id    ,
  obj.obj_type_id                 ,
  obj.obj_sub_type_id             ,
  cls.name              class_name
from
  code_obj_classif  cli                                              join
  code_obj_class    cls        on cls.obj_classif_id    = cli.id     join
  obj_class         ocl        on ocl.obj_class_id      = cls.id     join
  obj               obj        on ocl.obj_id            = obj.id
where
  cli.intl_id = 'tq84$classif' and
  cls.intl_id = 'tq84$class_val';