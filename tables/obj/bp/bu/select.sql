select
  bu_name.name            bu_name,
  bu_name.name_long       bu_name_long,
  vat_set.name            vat_set,
  acc_std.name            acc_std
from
  obj_bp_bu    bu                                                                           left join
  obj_name     bu_name on bu.obj_id = bu_name.obj_id and
                             bu_name.lang_id = -1 and
                             sysdate between bu_name.date_valid and bu_name.date_valid_to   left join
  code_vat_set vat_set on bu.vat_set_id = vat_set.id                                        left join
  code_acc_std acc_std on bu.acc_std_id = acc_std.id 