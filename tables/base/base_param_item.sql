select
  par.id         base_parameter_id,
  par.intl_id    base_parameter,
  itm.intl_id    item,
  itm.val        item_value,
  itm.raw_val    item_value_raw,
  itm.valid_from item_valid_from
from
  base_par      par                             join
  base_par_item itm on par.id = itm.base_par_id
where
  par.intl_id = 'avq.portf'
;