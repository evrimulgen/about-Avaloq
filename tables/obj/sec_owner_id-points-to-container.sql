--
-- The obj that sec_owner_id points to
-- is a container.
--
select /*+ parallel(16)  */
  count(*),
  obj_cont.obj_type_id,
  obj_cont.obj_sub_type_id
from
  obj           join
  obj obj_cont on obj.sec_owner_id = obj_cont.id
group by
  obj_cont.obj_type_id,
  obj_cont.obj_sub_type_id;
