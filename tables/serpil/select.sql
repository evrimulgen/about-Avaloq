select
   ser.id                serpil_id,
   ser.tab               serpil_table_name,
   mst.tab_name          serie_type_table_name,
   dtt.name              date_type,
   ser.bu_id,
   ser.done,
   ser.period_start,
   ser.period_end,
   ser.timestamp_start,
   ser.timestamp_end,
   mst.oracle_stmt       serie_type_create_table_stmt,
   mst.oracle_as_select  serie_type_as_select_stmt,
   ser.repl_serpil_id,
   ser.base_serpil_id,
   ser.dep_1_serpil_id,
   ser.dep_2_serpil_id,
   ser.dep_3_serpil_id
from
   serpil          ser                                               join
   meta_serie_tab  mst on ser.serie_type_id = mst.serie_type_id left join
   code_date_type  dtt on ser.date_type_id  = dtt.id 
;