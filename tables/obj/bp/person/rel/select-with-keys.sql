select
   rel_type.name                        relation_type,
   bp_2_pers.rel_person_id              obj_pers_id,   
   bp_2_pers.obj_id                     obj_bp_id
from
   obj_bp_person_rel       bp_2_pers                                                           join
   code_bp_person_rel_type rel_type      on bp_2_pers.bp_person_rel_type_id = rel_type.id      join
   obj_key                 bp_key        on bp_2_pers.obj_id                = bp_key.obj_id    join
   code_obj_key            bp_key_code   on bp_key.obj_key_id               = bp_key_code.id   join
   obj_key                 pers_key      on bp_2_pers.rel_person_id         = pers_key.obj_id  join
   code_obj_key            pers_key_code on pers_key.obj_key_id             = pers_key_code.id   
where
  sysdate between bp_2_pers.valid_from and bp_2_pers.valid_to and 
  bp_key_code.intl_id   = 'bp_nr'                             and
  pers_key_code.intl_id = 'tq84$intern_bp_id'                 and
  pers_key.key_val      = '42'
;
