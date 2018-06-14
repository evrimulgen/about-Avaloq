select
   rel_type.name                        relation_type,
   bp_2_pers.rel_person_id              obj_pers_id,
   bp_2_pers.obj_id                     obj_bp_id,
   bp_key.key_val                       bp_nr,
   pers_key.key_val                     tq84_intern_nr,
   obj_bp.birthdate                     bp_birthdate,
   bp_type.name                         bp_type,
   bp_acc_type.name                     bp_acc_type,
-- obj_bp.person_type_id                bp_person_type_id,
   bp_person_type.name                  bp_person_type,
   obj_bp.country_domi_id               bp_country_domi_id,
   obj_bp.country_nati_id               bp_country_nati_id,
   obj_bp.ref_curry_id                  bp_ref_curry_id
from
   obj_bp_person_rel       bp_2_pers                                                             join
   code_bp_person_rel_type rel_type       on bp_2_pers.bp_person_rel_type_id = rel_type.id       join
   obj_key                 bp_key         on bp_2_pers.obj_id                = bp_key.obj_id     join
   code_obj_key            bp_key_code    on bp_key.obj_key_id               = bp_key_code.id    join
   obj_key                 pers_key       on bp_2_pers.rel_person_id         = pers_key.obj_id   join
   code_obj_key            pers_key_code  on pers_key.obj_key_id             = pers_key_code.id  join
   obj_bp                  obj_bp         on bp_2_pers.obj_id                = obj_bp.obj_id     join
   code_bp_type            bp_type        on obj_bp.bp_type_id               = bp_type.id        join
   code_bp_person_type     bp_person_type on obj_bp.person_type_id           = bp_person_type.id join
   code_acc_type           bp_acc_type    on obj_bp.acc_type_id              = bp_acc_type.id
where
   sysdate between bp_2_pers.valid_from and bp_2_pers.valid_to and 
   bp_key_code.intl_id   = 'bp_nr'                             and
   pers_key_code.intl_id = 'tq84$intern_bp_id'                 and
-- bp_key_val            = '...'                               and
   pers_key.key_val      = '...'
;
