select
  ttp.intl_id,
  ttp.name      tree_type,
  tss.name      store_strat
from
  code_tree_type        ttp                                     left join
  code_tree_store_strat tss on ttp.tree_store_strat_id = tss.id;
--
-- INTL_ID            TREE_TYPE                              STORE_STRAT
-- ------------------ -------------------------------------- ----------------------------------------
-- netw_struct        Network Structure
-- msg_struct         Message Structure                      Message Internal Format
-- base_par_def       Base Parameter Definition Structure    Standard Base Parameter
-- trl_struct         Trailer Attribute Structure            Trailer Attribute of Tables
-- type_def           Type Definition
-- extn_tree          Object Extension Tree
-- msg_bdl_struct     Message Bundle Structure               Message Internal Format
-- ui_appl_menu       Application Menu Tree
--
