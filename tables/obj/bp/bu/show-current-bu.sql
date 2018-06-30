select
  bp.obj_id,
  nm.name
from
  obj_bp_bu     bp                           left join
  obj_name_intl nm on bp.obj_id = nm.obj_id
where
  bp.obj_id = session#.session#bu_id;
