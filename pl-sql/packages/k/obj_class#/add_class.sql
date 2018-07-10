declare
  l_obj binary_integer;
begin

  l_obj := lookup#.balacc_id('123.45.78.123.ZB', 45);

  if l_obj is not null then
      k.obj_class#.obj#add_class(
         l_obj,
         7433,
         null,
        '01-jan-2008'
      );
  end if;

end;
/
