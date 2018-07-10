begin

  base_par_intf#.base_par#set_val(
    i_intl_id => 'avq.keep',
    i_item    => 'trans_user',
    i_val     =>  90
  );

  commit;
end;
/
