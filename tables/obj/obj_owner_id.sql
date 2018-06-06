--
-- Compare with sec_owner_id
--
select /*+ parallel(16) */
-- count(*),
   substr(owner_typ.name    , 1, 20)           owner_typ,
   substr(owner_sub_typ.name, 1, 30)       owner_sub_typ,
   substr(owned_typ.name    , 1, 20)           owned_typ,
   substr(owned_sub_typ.name, 1, 30)        owned_sub_typ
from
   obj                 owner                                                                   join
   obj                 owned           on owned.obj_owner_id = owner.id                   left join
   code_obj_type       owner_typ       on owner_typ.id       = owner.obj_type_id          left join
   code_obj_sub_type   owner_sub_typ   on owner_sub_typ.id   = owner.obj_sub_type_id      left join
   code_obj_type       owned_typ       on owned_typ.id       = owned.obj_type_id          left join
   code_obj_sub_type   owned_sub_typ   on owned_sub_typ.id   = owned.obj_sub_type_id 
group by
   owner.obj_type_id    ,
   owner.obj_sub_type_id,
   owner_typ.name       ,
   owner_sub_typ.name   ,
   owned_typ.name,
   owned_sub_typ.name
order by
   count(*) desc
--
-- OWNER_TYP            OWNER_SUB_TYP                  OWNED_TYP            OWNED_SUB_TYP                 
-- -------------------- ------------------------------ -------------------- ------------------------------
-- Container            Shared Container               Position             Security                      
-- Container            Shared Container               Position             Contract                      
-- Container            Shared Container               Position             Interim Account               
-- Business partner                                    Asset                Contract                      
-- Business partner                                    Container            Shared Container              
-- Container            Shared Container               Position             Current Account               
-- Container            Ledger Container               Position             Interim Account               
-- Business partner                                    Financing            Standard Financing            
-- Business partner                                    Asset                Security                      
-- Business partner                                    Asset                Money Market Contract         
-- Container            Shared Container               Position             Asset Aggregation             
-- Balance structure                                   Balance account                                    
-- Container            Shared Container               Position             Note                          
-- Task definition                                     Task template                                      
-- Task definition                                     Task template        Technical Task Template       
-- Business partner                                    Container            Ledger Container              
-- Container            Shared Container               Position             Money Market Contract         
-- Task definition                                     Task layout                                        
-- Business partner                                    Asset                Other Security                
-- Task definition                                     Task template        Collection Task Template      
-- Task definition                                     Report datamart                                    
-- Business partner                                    Asset                Interest Rate                 
-- Container            Shared Container               Position             Metal Account                 
-- Business partner                                    Asset                Current Account               
-- Container            Ledger Container               Position             Metal Account                 
-- Container            Shared Container               Position             Cash Pooling Auxiliary Positio
-- Container            Shared Container               Position             Split Position                
-- Container            Shared Container               Position             Currency Pair Position        
-- Task definition                                     Task layout          Screen HTML Layout            
-- Container            Shared Container               Position             Cash Pooling Pool Position    
-- Business partner                                    Asset                Currency                      
-- Container            Ledger Container               Position             Note                          
-- Container            Ledger Container               Position             Contract                      
-- Container            Ledger Container               Position             Security                      
-- Business partner                                    Asset                Note                          
-- Business partner                                    Balance structure                                  
-- Task definition                                     Task layout          Screen Chart Layout           
-- Business partner                                    Asset                Real Security                 
-- Task definition                                     Task layout          Dashboard Layout              
-- Business partner                                    Asset                Virtual Metal                 
-- Container            Shared Container               Financing            Collateral Agreement          
-- Business partner                                    Asset                SLB Contract                  
-- Business partner                                    Asset                Realty                        

