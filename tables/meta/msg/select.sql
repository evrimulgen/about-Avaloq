select
  met.id                  meta_msg_id,
--met.netw_id,
  met.dir                 meta_msg_direction,
  met.name                meta_msg_name,
  net.id                  network_id,
  net.name                network_name,
  met.descn               meta_msg_description,
  met.meta_msg_struct_id
from
  meta_msg   met   join
  code_netw  net on met.netw_id = net.id
order by
  net.name,
  met.name;
