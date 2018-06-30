select
   ctr.obj_id,
   nam.name                     country_name,
   ctr.val_date_offset,
   ctr.intr_calc_method_id,
   ctr.val_date_offset_check,
   ctr.val_date_offset_note,
   ctr.iban_len,
   ctr.iban_bank_clr_start_pos,
   ctr.iban_bank_clr_end_pos,
   ctr.iban_ncc_key_1_id,
   ctr.iban_ncc_ref_obj_1_id,
   ctr.iban_ncc_key_2_id,
   ctr.iban_ncc_ref_obj_2_id,
   ctr.fy_start
from
   obj_country    ctr    left join
   obj_name_intl  nam on ctr.obj_id = nam.obj_id
order by
   nam.name;
