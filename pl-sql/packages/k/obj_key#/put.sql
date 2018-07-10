begin

  k.obj_key#.put (
    i_obj_id     =>  k.lookup#.cont_id ( i_key_val => '14.59792-49', i_obj_key_id => 14),
    i_obj_key_id =>  42,
    i_key_val    => 'TheContainer',
    i_bu_id      =>  4
  );

exception when others then
  dbms_output.put_line('Key already exists');
end;
/
