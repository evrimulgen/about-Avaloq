select
   tre.id,
   tre.name,
   tre.label,
-- tre.tree_type_id,
   trt.name             tree_type,
   tre.trl,
   tre.descn
from
   meta_tree tre                                    join
   code_tree_type trt on tre.tree_type_id = trt.id
;
