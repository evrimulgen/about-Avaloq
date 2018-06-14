select
  intl_id,
  user_id,
  substr(descn, 1, 40)    description,
  pkg_name package_name
from
  code_desk
order by
  descn;
-- 
-- INTL_ID                   USER_ID                   DESCRIPTION                              PACKAGE_NAME                 
-- ------------------------- ------------------------- ---------------------------------------- ------------------------------
-- afsa_desk                 AFSA_DESK                 AFS Administration Desk                  ui_appl_afs_admin#            
-- service_desk              SERVICE_DESK              Central Services                                                       
-- crm_desk                  CRM_DESK                  Client Relationship Manager Desk         ui_desk_crm#                  
-- crm_desk2                 CRM_DESK2                 Client Relationship Manager Desk         ui_desk_crm#                  
-- cra_desk                  CRA_DESK                  Client Risk Advisory Desk                                              
-- cltm_desk                 CLTM_DESK                 Collateral Management Desk               ui_desk_cltm#                 
-- cred_desk                 CRED_DESK                 Credit Desk                              ui_desk_cred#                 
-- fund_desk                 FUND_DESK                 Fund Administration Desk                 ui_desk_fund#                 
-- ls                        LS                        Limit System Desk                                                      
-- liquid_risk               LIQUID_RISK               Liquidity Risk Desk                                                    
-- mkt_risk                  MKT_RISK                  Market Risk Desk                                                       
-- nav                       N                         Navigator                                                              
-- pfm                       PFM                       PFM Desk                                 ui_desk_pfm#                  
-- param_desk                PARAM_DESK                Param Desk                                                             
-- portf                     PORTF                     Portfolio                                ui_desk_portf#                
-- rm_desk                   RM                        Relationship Manager Workplace           ui_desk_rm#                   
-- rm_desk2                  RM2                       Relationship Manager Workplace           ui_desk_rm#                   
-- task_desk                 TASK_DESK                 Task Desk                                                              
-- workbook_desk             WORKBOOK_DESK             Workbook Desk                                                            
--
