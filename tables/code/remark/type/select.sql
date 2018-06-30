select
   intl_id,
   name
from
   code_remark_type
where
   activ = '+' /*and
   intl_id not like '%$%'*/
order by
   code_remark_type.name
-- id
;  
