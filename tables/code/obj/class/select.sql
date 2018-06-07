select
   obt.name    object_type,
   clf.name    classification_name,
   cls.name    class_name,
   cls.intl_id class_intl_id
from
   code_obj_classif    clf                                join
   code_obj_class      cls on clf.id = cls.obj_classif_id join
   code_obj_type       obt on obt.id = clf.obj_type_id
order by
   obt.name,
   clf.name,
   cls.name;