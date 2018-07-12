select
   id,
   intl_id,
   user_id,
   name
from
   code_src_action
order by
   name;
--
--         ID INTL_ID         USER_ID         NAME                                    
-- ---------- --------------- --------------- ----------------------------------------
--          1 do_activ        ACTIV           Activate                                
--          5 do_cmpl         CMPL            Compile                                 
--          9 do_create       CREATE          Create                                  
--          2 do_deactiv      DEACTIV         Deactivate                              
--         13 do_del_seq      DEL             Delete last version                     
--          3 do_drop         DROP            Drop                                    
--         17 do_drop_ovr     DROP_OVR        Drop Override                           
--         16 do_inst         INST            Install                                 
--          4 do_new_seq      NEW             New version                             
--         12 do_ovr          OVR             Override                                
--         18 do_ren          RENAME          Rename source                           
--          6 do_rev          REV             Reverse compile                         
--         15 do_sync_activ   SYNC_ACTIV      Synchronize active status               
--         11 do_valid        VALID           Validate    
