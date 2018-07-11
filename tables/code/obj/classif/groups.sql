--
-- Show all classifications of an object type (e.g. asset) and show
-- their respective group name according to column "order_by_form".
--
select
   case when nvl(lag(otn.text) over (order by cif.order_by_form), '!') != otn.text then otn.text end classification_group,
   cif.name,
   cif.order_by_form
-- otn.key
from
   code_obj_classif      cif left join
   out_text_norm         otn   on 'OBJ_CLASSIF.HIRA.' || substr(cif.order_by_form, 1, 6) = otn.key and
                                   otn.lang_id = -1
where
   cif.activ        = '+'             and
   cif.order_by_form like '005.%' -- 5: assets.
order by
   cif.order_by_form;
