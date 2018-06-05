--
-- Apparently, when a obj's instru_id is not null, this indicates that
-- the obj is a position and the instru_id points to an obj that is an asset
--
select /*+ first_rows */
  obj_pos.id                    pos_id,
--obj_pos.obj_type_id           pos_type_id,
  pos_type.name                 pos_type,
--obj_pos.obj_sub_type_id       pos_sub_type_id,
  pos_sub_type.name             pos_sub_type,
  obj_ass.id                    ass_id,
  ass_name.name                 ass_name,
--obj_ass.obj_type_id           ass_type_id,
  ass_type.name                 ass_type,
--obj_ass.obj_sub_type_id       ass_sub_type_id
  ass_sub_type.name             ass_sub_type,
  obj_asset.*
from
  obj               obj_pos                                                             join
  obj               obj_ass       on obj_pos.instru_id       = obj_ass.id          left join 
  obj_asset         obj_asset     on obj_ass.id              = obj_asset.obj_id    left join
  code_obj_type     pos_type      on obj_pos.obj_type_id     = pos_type.id         left join
  code_obj_type     ass_type      on obj_ass.obj_type_id     = ass_type.id         left join
  code_obj_sub_type pos_sub_type  on obj_pos.obj_sub_type_id = pos_sub_type.id     left join
  code_obj_sub_type ass_sub_type  on obj_ass.obj_sub_type_id = ass_sub_type.id     left join
  obj_name          ass_name      on obj_ass.id              = ass_name.obj_id and
                                     sysdate between ass_name.date_valid and
                                                     ass_name.date_valid_to    and
                                     ass_name.lang_id = -1 /* Hmmm... */
--where
  --pos_sub_type.name = 'Security'
;                                    
