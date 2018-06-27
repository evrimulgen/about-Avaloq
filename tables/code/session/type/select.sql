select
  id,
  substr(name, 1, 25),
  is_batch,
  is_intf,
  use_mem_trx,
  substr(descn, 1, 210)
from
  code_session_type;
--
        ID NAME                      IS_BATCH IS_INTF USE_MEM_TRX DESCRIPTION                                                                                                                                                                                                       
---------- ------------------------- -------- ------- ----------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
         0 Undefined session                                      Used by session#.open_session. The properties is_batch, is_intf and aud_session from CODE_SESSION_TYPE are ignored, the according session properties are calculated from the parameters i_is_intf, i_is_batch.    
         1 Technical session                                      Technical session (e.g. from SQL*Plus)                                                                                                                                                                            
         2 BGP session               +                            Background process session                                                                                                                                                                                        
         3 Stateful UI session                +       +           Stateful UI session (e.g. from SmartClient)                                                                                                                                                                       
         4 Stateless UI session               +                   Stateless UI session (e.g. from Web client)                                                                                                                                                                       
--
  