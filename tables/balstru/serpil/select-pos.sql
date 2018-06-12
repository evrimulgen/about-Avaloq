--
--   Select a specific position from the
--   Balance pillar of a given date.
--
with sel_pillar as (
--
--  Subquery to find correct serpil_id
--
    select
      ser.id     serpil_id
    from
      serpil         ser    join
      code_date_type cdd on ser.date_type_id = cdd.id
    where
      ser.tab          = 'BALSTRU_SERPIL'      and
      ser.period_start = trunc(sysdate) - 1    and
      ser.bu_id        = 10                    and
      cdd.intl_id      = 'book'                    -- book:Value Book Date, veri: Trade Book Date
)
select
   pil.qty_asset     qty_asset,
   pil.qty_curry     qty_curry,  
   pil.val           value,
-- pil.val_curry_id,
  (select name from obj_name nam where nam.obj_id = pil.val_curry_id and nam.lang_id = -1 and sysdate between nam.date_valid and nam.date_valid_to) val_curry, 
-- pil.balacc_id
  (select name from obj_name nam where nam.obj_id = pil.balacc_id    and nam.lang_id = -1 and sysdate between nam.date_valid and nam.date_valid_to) balance_account,
-- bac.balstru_id balstru_id,
  (select name from obj_name nam where nam.obj_id = bac.balstru_id   and nam.lang_id = -1 and sysdate between nam.date_valid and nam.date_valid_to) balance_structure,
   bst.is_main    balstr_is_main
from
  sel_pillar     sel                                    join  
  balstru_serpil pil on sel.serpil_id  = pil.serpil_id  join
  obj_balacc     bac on pil.balacc_id  = bac.obj_id     join
  obj_balstru    bst on bac.balstru_id = bst.obj_id 
where
  pil.pos_id = 42;