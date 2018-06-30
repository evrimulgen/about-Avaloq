--
-- Not every object type has a meta type.
--
-- No two object types have the same meta type.
--
select
   count(*),
   obt.meta_typ_id
from
   code_obj_type obt
group by
   obt.meta_typ_id
order by
   count(*) desc;
