select
   usr.name                 user_name,
   pft.name                 preference_type,
   prf.val                  preference_value 
from
   sec_user_pref  prf                               join
   sec_user       usr on prf.sec_user_id  = usr.id  join
   code_pref_type pft on prf.pref_type_id = pft.id
where
   sysdate between usr.start_date and nvl(usr.close_date, sysdate);