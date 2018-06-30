select
   nvl(txt.text, dsk.name)  name,
   dsk.descn,
   dsk.obj_ctx,
   dsk.start_ui_action_list,
   dsk.env_compo_id
from 
   code_desk dsk                                           left join
   out_text  txt on replace(dsk.name, '@', '') = txt.key
