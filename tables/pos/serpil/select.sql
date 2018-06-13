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
      ser.tab          = 'POS_SERPIL'          and
      ser.period_start = trunc(sysdate) - 1    and
  --  ser.bu_id        = 10                    and
      cdd.intl_id      = 'book'                    -- book:Value Book Date, veri: Trade Book Date
)
select
-- sel.serpil_id,
-- pil.pos_id,   
   pil.bp_id,
   pil.cont_id,
   pil.val_asset,   
--pil.asset_id,
  (select name from obj_name nam where nam.obj_id = pil.asset_id and nam.lang_id = -1 and sysdate between nam.date_valid and nam.date_valid_to) asset,   
   pil.ref_curry_id,
   pil.ai_type_id,
   pil.price,
   pil.price_curry_id,
   pil.val_bal,
   pil.val_asset_cur,
   pil.val_bank_cur,
   pil.val_spec,
   pil.price_quote_type_id,   
   pil.from_atrx_seq_nr,
   pil.to_atrx_seq_nr,   
   pil.pko_id
-- pil.val_curry_id,
from
  sel_pillar     sel                                    join  
  pos_serpil     pil on sel.serpil_id  = pil.serpil_id
where
  pil.pos_id = 42;