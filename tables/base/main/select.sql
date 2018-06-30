select
-- bmn.session_level,
   slv.name                  session_level,
   bmn.eod_disconnect_usr,
   bmn.shell_version,
   bmn.clt
from
   base_main          bmn join
   code_session_level slv on bmn.session_level = code_session_level.id;
