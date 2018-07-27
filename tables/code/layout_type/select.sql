select
   substr(lyt.name   , 1, 20) layout_type_name,
   substr(lyt.intl_id, 1,  7) intl_id,
   sct.name   script_type
from
   code_layout_type lyt                                 join
   code_script_type sct on sct.id = lyt.script_type_id
;
--
-- LAYOUT_TYPE_NAME     INTL_ID SCRIPT_TYPE
-- -------------------- ------- -----------------------------
-- Screen Layout        screen  Report Writer Screen Layout
-- Print Layout         print   Report Writer Print Layout
-- File Layout          file    Report Writer File Layout
-- Script Layout        script  Report Writer Script Layout
-- Tab Layout           tab     Report Writer Table Layout
--
