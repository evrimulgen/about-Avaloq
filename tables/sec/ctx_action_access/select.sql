select
   txt.text_xx   context_action_text,
   cta.intl_id   context_action_intl_id ,
   cda.name      access_code
from
   sec_ctx_action_access caa                                    join
   ctx_action            cta on caa.ctx_action_id = cta.id      join
   code_access           cda on caa.access_id     = cda.id left join
   out_text              txt on cta.out_text_key  = txt.key
;
