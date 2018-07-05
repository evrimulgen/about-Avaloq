begin script#.do_dyn(q'{
declare
  tq84_doc_id id doc; -- The "data type" doc seems to be ignored.
begin
  tq84_doc_id := 42;
  with doc(tq84_doc_id) as tq84_doc do
      session.debug('Id of doc is: ' || tq84_doc);
      session.debug('Meta type is: ' || tq84_doc.name);
  end with;
end;}');
end;
/

select * from log
where
  session_id = ora_session#.session#sid and
  sec_user_id = sys_context('AAA_SEC', 'SEC_USER_ID')
order by
  timestamp desc;
