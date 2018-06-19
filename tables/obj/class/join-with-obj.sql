--
-- Find the classifications and classes that are »attached« to an obj.
--
select
   cli.name             classification,
   cls.name             class,
   cls.id               class_id,
   ocl.obj_classif_id   classif_id
from
   obj                                                         join
   obj_class         ocl on obj.id             = ocl.obj_id    join
   code_obj_class    cls on ocl.obj_class_id   = cls.id        join
   code_obj_classif  cli on cls.obj_classif_id = cli.id
where
  obj.id = 42;
