--
-- Compile an invalid source and then display errors (if any?).
--
-- The procedure also prompts for further actions (activate,
-- compile, drop).
a-

set serveroutput on line 10000

begin
  k.src_sql_plus_admin#.src#cmpl(i_src_id => 42);
end;
/

