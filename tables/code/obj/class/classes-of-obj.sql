--
-- Show an object's classifications and classes.
--
select
   ci.name              classif_name,
   cl.name              class_name,
   ci.id                classif_id,
   cl.id                class_id,
   ci.intl_id           classif_intl_id,
   cl.intl_id           class_intl_id,
   ci.descn             classif_descn,
   cl.descn             class_descn
from
   obj_class        oc                               join
   code_obj_classif ci on oc.obj_classif_id = ci.id  join
   code_obj_class   cl on oc.obj_class_id   = cl.id
where
   oc.obj_id = 42
order by
   cl.order_by
;
