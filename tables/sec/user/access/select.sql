select
   usr.name   user_name,
   coa.name   access_code,
   bun.name   bu
from
   sec_user_access sua                                 join
   sec_user        usr on sua.sec_user_id = usr.id     join
   obj_name_intl   bun on sua.bu_id       = bun.obj_id join
   code_access     coa on sua.access_id   = coa.id
where
   usr.name = 'Major Tom'
;
