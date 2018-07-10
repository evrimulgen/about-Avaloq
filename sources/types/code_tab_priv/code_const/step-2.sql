--
--  Step 2: add values into code_const
--
begin
  src_intf#.src#install (
    i_src_name    => 'code_const.tq84$tq84',
    i_src_type_id => def_obj_sub_type.src_code_tab_priv,
    i_src_text    =>
------------------------------------------------------------------
q'{
[code table 1.0]

code table CODE_CONST.TQ84$TQ84

  row tq84$tq84_row_one
    intl_id                             "tq84$row_one"
    user_id                             "TQ84$ROW_ONE"
    naming
      dfltlang                          "First row for tq84"
      english                           "First row for tq84"

  row tq84$tq84_row_two
    intl_id                             "tq84$row_two"
    user_id                             "TQ84$ROW_TWO"
    naming
      dfltlang                          "Second row for tq84"
      english                           "Second row for tq84"

end code table}');
----------------------------------------------------------------------
end;
/

begin
  k.src#.src#do_action(
       src#.src_to_id('code_const.tq84$tq84', def_obj_sub_type.src_code_tab_priv),
       def_src_action.do_valid
  );
end;
/

select * from code_const where intl_id like 'tq84$tq84%';
