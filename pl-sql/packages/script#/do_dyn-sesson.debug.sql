begin script#.do_dyn('
   begin
     session.debug("hello world");
   end;
'); end;
/

select
  ctx
from
  log
where
  sec_user_id = sys_context('AAA_SEC', 'SEC_USER_ID')
order by id desc;
