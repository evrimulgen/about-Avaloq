select
  id,
  user_id,
  intl_id,
  name,
  activ,
  evt_date_attr_name,
  pbal_serpil,
  pbal_serpil_open
from
  code_date_type;   
--
--   ID USER_ID   INTL_ID   NAME                ACTIV EVT_DATE_ATTR_NAME PBAL_SERPIL PBAL_SERPIL_OPEN
-- ---- --------- --------- ------------------- ----- ------------------ ----------- ----------------
--    6 PERF      perf      Performance Date    +     perf_date          +                           
--    1 TRX       trx       Transaction Date    +     trx_date           +                           
--    2 VAL       val       Value Date          +     val_date           +                           
--    3 REF       ref       Reference Date      +                                                    
--    4 VERI      veri      Trade Book Date     +     done_date          +           +               
--    5 BOOK      book      Value Book Date     +     book_date          +           +               
