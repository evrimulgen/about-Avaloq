select
  bas.bu_id,
  bas.today,
  bas.next_today,
  bas.forex_valid,
  bas.last_pillar,
--bas.eod_status_id,
  eos.name               eod_status,
  bas.eod_start,
  bas.eod_end
from
  base            bas   join
  code_eod_status eos on bas.eod_status_id = eos.id
order by
  bas.bu_id;
