select
   mty.name    meta_type,
   ort.name    order_type,
   ort.descn   order_type_description
from
   code_order_type  ort join
   meta_typ         mty on ort.meta_typ_id = mty.id
order by
   mty.name,
   ort.name;