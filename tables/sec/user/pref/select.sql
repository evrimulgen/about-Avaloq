select
   usr.name,
   usr.oracle_user,
-- prf.pref_type_id,
   prt.name           pref_type,
   prf.val            pref_val,
   prf.clob_val       some_xml,
   prf.bu_id          pref_bu
from
   sec_user       usr                               join
   sec_user_pref  prf on usr.id = prf.sec_user_id   join
   code_pref_type prt on prt.id = prf.pref_type_id
where
   lower(usr.name) like '%nyffenegger%';
