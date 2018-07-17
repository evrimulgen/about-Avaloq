--
-- Print business unit of connected session.
--
select
   substrb(nam.name, 1, 30)    bu_name,
   substrb(bst.name, 1, 30)    bu_status
from
   obj_bp_bu      obu                               join
   code_bu_status bst on bst.id     = obu.bu_status_id  join
   obj_name_intl  nam on obu.obj_id = nam.obj_id
where
   obu.obj_id = session#.session#bu_id;	
