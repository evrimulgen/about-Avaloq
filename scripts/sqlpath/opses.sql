--
-- Open session, optionally with a specified business unit
--
-- @opses null
-- @opses 4
-- @poses 9
--
define bu=&&1
begin
  session#.open_session(i_bu_id => &bu);
end;
/

-- Show new busness unit.
@bu
