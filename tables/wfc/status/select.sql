select
-- sts.meta_typ_id,
   mty.name                  meta_type,
   sts.id                    workflow_status_id,
   sts.name                  workflow_status_name,
   sts.descn                 workflow_status_description,
   sts.is_frozen             workflow_is_frozen,
   sts.is_in_work            workflow_is_in_work,
   sts.evt_status_id,
   sts.wfc_status_reject_id
from
   wfc_status sts        join
   meta_typ   mty on sts.meta_typ_id = mty.id
order by
   mty.name,
   sts.id
;