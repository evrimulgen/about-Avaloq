--
-- Step one: add an entry into code_const_type
--

set define off
begin
  src_intf#.src#install (
    i_src_name    => 'code_const_type',
    i_src_type_id => def_obj_sub_type.src_code_tab_priv,
    i_src_text    =>
------------------------------------------------------------------
to_clob(q'{
[code table 1.0]

code table code_const_type

  row tq84$tq84
    user_id         "TQ84"
    naming
      dfltlang      "Tee queue eighty four"

end code table
}'));

end;
/


begin
  k.src#.src#do_action(
       src#.src_to_id('code_const_type', def_obj_sub_type.src_code_tab_priv),
       def_src_action.do_valid
  );
end;
/

select * from code_const_type where intl_id = 'tq84$tq84';
