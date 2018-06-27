select
   prcq.obj_id,
   prcq.valid,
   prcq.stmt,
   prcq.sec_user_init_id,
   prcq.keep,
   prcq.retry_interval,
   prcq.fa_err,
-- prcq.prc_date_type_id,
   pdtt.name                       process_date_type,
-- prcq.retry_interval_type_id,
   rint.name                       interval_type,       -- Constant or exponential
   prcq.retry_min_interval,
   prcq.retry_max_interval,
   prcq.retry_exponential_factor
from
   obj_prcq                 prcq                                           left join
   code_date_type           pdtt on prcq.prc_date_type_id       = pdtt.id  left join
   code_retry_interval_type rint on prcq.retry_interval_type_id = rint.id
;
