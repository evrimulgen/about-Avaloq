--
-- A record in meta_script_tab apparently represents a DDIC.
--
select
  ddic.id           ddic_id,
  ddic.tab_type     ddic_type, -- mem,tab, dtm or pillar
  ddic.name         ddic_name,
  ddic.descn        ddic_description,
--src .src_type_id,
  srct.name         source_type -- source type is one of
                                --    Data Dictionary
                                --    Report Datamart
                                --    Code Table Dat
                                --    Type Definition
                                --    Interface
                                --    Network Structure,
                                --    Message Structure or
                                --    Workflow definition
from
  meta_script_tab ddic                                left join
  src             src   on ddic.gen_src_id  = src .id left join
  code_src_type   srct  on src .src_type_id = srct.id
order by
  ddic.name
