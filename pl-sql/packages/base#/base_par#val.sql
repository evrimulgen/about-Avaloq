select
  par.intl_id,
  itm.intl_id,
  base#.base_par#val(par.intl_id, itm.intl_id)
from
  base_par par join
  base_par_item itm on par.id = itm.base_par_id
where
  par.intl_id like 'tq84$add%' and
  rownum < 3
;
