select
   intl_id,
   user_id,
   name,
   substr(descn, 1, 140)
from
   code_access_type;  
--    
-- INTL_ID                        USER_ID                        NAME                                     SUBSTR(DESCN,1,140)                                                                                                                         
-- ------------------------------ ------------------------------ ---------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------
-- admin_access                   ADMIN_ACCESS                   Access code for administrative purposes  Access code for administrative purposes                                                                                                     
-- normal_access                  NORMAL_ACCESS                  Normal Access Code                       Normal access code                                                                                                                          
-- session_context_access         SESSION_CONTEXT_ACCESS         Session Context Access Code              Session context access code                                                                                                                 
-- data_access                    DATA_ACCESS                    Data Access Code (only available if OrgS Data access code                                                                                                                            
-- funct_access                   FUNCT_ACCESS                   Functional Access Code (only available i Functional access code                                                                                                                      
-- rsrc_access                    RSRC_ACCESS                    Resource Access Code (only available if  Resource access code                                                                                                                        
-- sys_access                     SYS_ACCESS                     System Access Code                       System access code                                                                                                                          
-- sys_access_exp_driver          SYS_ACCESS_EXP_DRIVER          System Access Code with Export Driver    System access code. Sec Users with such an access code are export drivers (all visible data in EWOM with SAX is replicated to FWOM)   
