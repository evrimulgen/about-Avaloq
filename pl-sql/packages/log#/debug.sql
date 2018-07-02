begin
  k.log#.debug('TQ84 was here, too');
end;
/

select
  ctx
from
  log
where
  sec_user_id = sys_context('AAA_SEC', 'SEC_USER_ID')
order by id desc;
