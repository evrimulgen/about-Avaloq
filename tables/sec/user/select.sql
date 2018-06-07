select
   usr.id,
   usr.name,
   usr.last_login,
   usr.is_dropped,
   usr.oracle_user,
-- usr_lic_type_id,
   lic.name         licence_type,
   typ.intl_id      user_typ,
   usr.email
from
   sec_user           usr                                        join
   code_user_type     typ on usr.user_type_id      = typ.id left join
   code_user_lic_type lic on usr.user_lic_type_id  = lic.id
where
   usr.name like '%Fernandez%Francisco%'
;  
