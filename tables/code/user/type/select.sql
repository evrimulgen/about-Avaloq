--
--  Apparently, there are user types that need to be licenced and other
--  users that don't need to be licenced. Compare with table code_user_lic_type.
--
select
   id,
   intl_id,
   is_role,
   has_no_sec,
   substr(descn, 1, 220)       description
from
   code_user_type
order by
   is_role    desc,
   has_no_sec desc;
--    
--         ID INTL_ID         IS_ROLE HAS_NO_SEC DESCRIPTION                                                                                                                                                                                                                 
-- ---------- --------------- ------- ---------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--          2 tech                               Unrestricted technical end user who is NOT allowed to login the Avaloq client but to run workflow actions. This user has NOT to be licensed.                                                                                
--          3 param                              End user who is allowed to login the Avaloq client but NOT to run workflow actions. This user has NOT to be licensed.                                                                                                       
--         10 tech_restr                         Restricted technical end user who is NOT allowed to login the Avaloq client but to run workflow actions. This user has NOT to be licensed.                                                                                  
--          5 virt                               Virtual users are used to reflect the e-Banking users in order to profit from order transition and auditing. This user has NOT to be licensed.                                                                              
--          1 indvl                              End user who is allowed to login the Avaloq client and to run workflow actions. This user has to be licensed.                                                                                                               
--          9 imed                    +          This user is linked to exactly 1 login user and 1 job user which are also linked together. This user is used to open an Avaloq session on behalf of the linked login user and uses the security of the linked job user.     
--          8 login                   +          This user is used for authentication only. To start an Avaloq session, this user must have granted one or multiple job users providing the privileges.                                                                      
--          7 funct_role      +                  Special type of role user designed for OrgStruct setup which can be granted functional access codes, normal access codes and other functional role users. This user has NOT to be licensed.                                 
--          6 rsrc_role       +                  Special type of role user designed for OrgStruct setup which can be granted resource access codes and other resource role users. This user has NOT to be licensed.                                                          
--          4 role            +                  Organisational entity (similar to ROLE in Oracle) which is administrated like an Avaloq end user, but without permission to login the Avaloq client or to run workflow actions. This user has NOT to be licensed.
--
