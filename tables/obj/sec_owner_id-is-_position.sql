--
--  sec_owner_id seems to point to the container
--  in which a position is.
--
select /* + parallel(16) */ *
from
  obj
where
  sec_owner_id is not null and
  obj_type_id not in (
    9,  -- Position
    75  -- Cheque Book Profile
  );