--
-- Who am I?
--
select
   usr.id,
   usr.name,
   usr.oracle_user
from
   sec_user usr
where
   usr.id = sys_context('AAA_SEC', 'SEC_USER_ID');
