select
  obt.name          object_type,
  clf.name,
  cty.name          classification_type,  
  clf.descn,
  clf.order_by_form,
  clf.overrulable,
  clf.method
from
  code_obj_classif      clf                                        join
  code_obj_type         obt on clf.obj_type_id         = obt.id    join
  code_obj_classif_type cty on clf.obj_classif_type_id = cty.id
order by
  obt.name,
  clf.name;