declare
  l_key varchar2(20);
  l_obj number;
begin

  l_key := '11081757';

  l_obj := lookup#.bp_id(
             i_key_val => l_key,
             i_bu_id   => 9
           );

  dbms_output.put_line (l_key || ': ' || l_obj);
end;
/
