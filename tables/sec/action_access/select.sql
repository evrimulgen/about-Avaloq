select
   mtt.name  meta_type,
   wfa.name  workflow_action,
   cda.name  access_code
-- saa.*
from
   sec_action_access saa                                join
   meta_typ          mtt on saa.meta_typ_id   = mtt.id  join
   wfc_action        wfa on saa.wfc_action_id = wfa.id  join
   code_access       cda on saa.access_id     = cda.id
;
