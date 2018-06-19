set lines       250
set serverouput on size unlimited
set pages       5000
select
-- src_type.intl_id,
   substr(src_type.is_ora_src, 1, 1)   o,
   src_type.name,
   substr(src_type.src_ctx    , 1, 20) context,
   substr(src_type.action_stmt, 1, 40) action_stmt,
   substr(src_type.reset_stmt , 1, 59) reset_stmt
from
   code_src_type src_type
where
   src_type.activ = '+'
order by
   src_type.is_ora_src,
   upper(src_type.name)
;
--
-- O NAME                                     CONTEXT              ACTION_STMT                              RESET_STMT
-- - ---------------------------------------- -------------------- ---------------------------------------- -----------------------------------------------------------
--   Adapter Definition                       adpt_def             src_adpt_def#.src#do_action(:src)
--   Adapter Instance                         adpt_instn           src_adpt_instn#.src#do_action(:src)
--   Application                              obj                  src_app#.src#do_action(:src)             src_app#.reset
--   ATS Compo wide Parameterisation Data     ats_config           src_test#.src#do_action(:src)
--   ATS Test Script Definition               ats_script           src_test#.src#do_action(:src)
--   Audit                                    meta_typ             src_aud#.src#do_action(:src)             src_aud#.reset
--   avaloq Script Package                                         src_script#.src#do_action(:src)          src_script#.reset
--   Background Process                       obj                  src_bgp#.src#do_action(:src)             src_bgp#.reset
--   Base Parameter Definition                base_par_ui_v        src_base_par_def#.src#do_action(:src)    src_base_par_def#.reset
--   Code Table Data                                               src_code_tab#.src#do_action(:src)        src_code_tab#.reset
--   Code Table Definition                    meta_code_tab        src_code_tab_def#.src#do_action(:src)    src_code_tab_def#.reset
--   Dashboard                                obj                  src_dshbrd#.src#do_action(:src)
--   Data Dictionary                          meta_script_tab      src_ddic#.src#do_action(:src)            src_ddic#.reset
--   DDIC Validation                                               src_ddic_valid#.src#do_action(:src)      src_ddic_valid#.reset
--   Duplicate Control                        code_dupl_ctrl       src_dupl_ctrl#.src#do_action(:src)       src_dupl_ctrl#.reset
--   File Report                              obj                  src_rep#.src#do_action(:src)             src_rep#.reset
--   File Stream                              obj                  src_stream_file#.src#do_action(:src)
--   Generated Avaloq Install                                      src_avq_install#.src#do_action(:src)     src_avq_install#.reset
--   Incoming Message                         meta_msg             src_msg_in#.src#do_action(:src)          src_msg_in#.reset
--   Interface                                intf_def_item        src_intf_def#.src#do_action(:src)        src_intf_def#.reset
--   Key                                      code_obj_key         src_key_def#.src#do_action(:src)         src_key_def#.reset
--   Label Definitions
--   Label Translations
--   Message Bundle In                        meta_msg_bdl         src_msg_bdl#.src#do_action(:src, netw#.c src_msg_bdl#.reset
--   Message Bundle Out                       meta_msg_bdl         src_msg_bdl#.src#do_action(:src, netw#.c src_msg_bdl#.reset
--   Message Bundle Structure                 meta_msg_bdl_struct  src_msg_bdl_struct#.src#do_action(:src)  src_msg_bdl_struct#.reset
--   Message Structure                        meta_msg_struct      src_msg_struct#.src#do_action(:src)      src_msg_struct#.reset
--   Network                                  code_netw            src_netw#.src#do_action(:src)
--   Network Structure                        code_netw_struct     src_netw_struct#.src#do_action(:src)     src_netw_struct#.reset
--   Order Validation                         meta_typ             src_doc_valid#.src#do_action(:src)       src_doc_valid#.reset
--   Outgoing Message                         meta_msg             src_msg_out#.src#do_action(:src)         src_msg_out#.reset
--   Parameter List                           meta_parlist         src_parlist#.src#do_action(:src)         src_parlist#.reset
--   Pillar                                   meta_serie           src_serpil_def#.src#do_action(:src)      src_serpil_def#.reset
--   Print Report                             obj                  src_rep#.src#do_action(:src)             src_rep#.reset
--   Printer                                  obj_printer          src_printer#.src#do_action(:src)         src_printer#.reset
--   Queue Processor                          obj                  src_prcq#.src#do_action(:src)            src_prcq#.reset
--   Reconciliation Calculation Method        frag                 src_recon_cmtd#.src#do_action(:src)      src_recon_cmtd#.reset
--   Report Datamart                          obj                  src_rep#.src#do_action(:src)             src_rep#.reset
--   RESTful API Modeling Language schema     adpt_def             src_raml#.src#do_action(:src)
--   Rule Template                            code_rule_templ_type src_rule_templ#.src#do_action(:src)      src_rule_templ#.reset
--   Screen Report                            obj                  src_rep#.src#do_action(:src)             src_rep#.reset
--   Script Report                            obj                  src_rep#.src#do_action(:src)             src_rep#.reset
--   Security Event 2 Asset Flow Template     meta_af_list         src_secevt2_aft#.src#do_action(:src)     src_secevt2_aft#.reset
--   Security Event Statement Text            code_doc_text        src_secevt2_text#.src#do_action(:src)    src_secevt2_text#.reset
--   Source Framework Test Compiler                                execute immediate 'begin it_src_compiler execute immediate 'begin it_src_compiler_test#.reset; end;'
--   Structured Mailing Product Definition    meta_smp             src_smp_def#.src#do_action(:src)
--   Table Editor                                                  src_tab_ed#.src#do_action(:src)          src_tab_ed#.reset
--   Table Report                             obj                  src_rep#.src#do_action(:src)             src_rep#.reset
--   Task                                     obj                  src_task_def#.src#do_action(:src)        src_task_def#.reset
--   Task Template                            obj                  src_task_templ#.src#do_action(:src)      src_task_templ#.reset
--   Tree Structure                           meta_tree            src_tree_struct#.src#do_action(:src)     src_tree_struct#.reset
--   Type Definition                                               src_type_def#.src#do_action(:src)        src_type_def#.reset
--   User                                     sec_user             src_user#.src#do_action(:src)            src_user#.reset
--   Web Service Definition Language schema   adpt_def             src_wsdl#.src#do_action(:src)
--   Workflow Command Library                                      src_wfcl#.src#do_action(:src)            src_wfcl#.reset
--   Workflow definition                                           src_wfd#.src#do_action(:src)             src_wfd#.reset
--   Workflow Library                                              src_wfl#.src#do_action(:src)             src_wfl#.reset
--   XML Schema                                                    src_xsd#.src#do_action(:src)
--
