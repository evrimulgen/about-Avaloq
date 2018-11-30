select
   coa.id,
   coa.name,
   coa.descn,
   cat.name       access_type,
-- -coa.access_type_id,
   txt.text_xx    out_text,
   bun.name       business_unit,
-- coa.bu_id,
   coa.intl_id,
   coa.user_id
from
   code_access      coa                                    left join
   out_text         txt on 'ACCESS.' || coa.id = txt.key   left join
   code_access_type cat on coa.access_type_id = cat.id     left join
   obj_name_intl    bun on coa.bu_id = bun.obj_id
--where
-- txt.text_xx is not null
;
