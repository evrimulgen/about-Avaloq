select 
   src.name                 src_name,
   cst.name                 src_type,
   sdr.db_obj_schema,
   sdr.db_obj_name,
   sdr.db_obj_type,
   sdr.on_drop_casc
from
   src_db_obj_rel     sdr                                   join
   src                src on sdr.src_id          = src.id   join
   code_src_rel_type  csr on sdr.src_rel_type_id = csr.id   join
   code_src_type      cst on src.src_type_id     = cst.id
-- where
--   sdr.db_obj_type not in ('PACKAGE', 'PACKAGE BODY', 'PROCEDURE', 'FUNCTION', 'TABLE', 'VIEW')
);
