select
   doc .aging_id,
   doc .id,
   doc .meta_typ_id,
   doc .timestamp,
   doc .order_nr,
   doc .trx_date,
   doc .trx_date_a,
   doc .val_date,
   doc .val_date_a,
   doc .perf_date,
   doc .perf_date_a,
   doc .order_type_id,
   doc .order_sub_type_id,
   doc .doc_role_id,
   doc .linked_amount,
   doc .amount,
   doc .bp_1_id,
   doc .bp_2_id,
   doc .asset_id,
   doc .ins_by_sec_user_id,
   doc .wfc_status_id,
   doc .wfc_action_id,
   doc .pos_1_id,
   doc .pos_2_id,
   doc .bp_imed_id,
   doc .doc_ref_id,
   doc .msg_last_id,
   doc .settle_plan_id,
   doc .ex_rate_ac_bc,
   doc .ex_rate_ac_bc_pretty,
   doc .link_grp,
   doc .ordered_by,
   doc .ordered_by_id,
   doc .medium_id,
   doc .expir_date,
   doc .expir_date_a,
   doc .wfc_print,
   doc .wfc_print_storno,
   doc .msg_trx_nr,
   doc .intl_ref_nr,
   doc .has_postit,
   doc .cont_1_id,
   doc .cont_2_id,
   doc .order_date,
   doc .spec_trl,
   doc .settle_plan_id_a,
   doc .order_type_grp_id,
   doc .is_calc,
   doc .is_backdt,
   doc .is_migr,
   doc .is_revs,
   doc .is_in_work,
   doc .idx_wfc_status_id,
   doc .dupl_doc_id,
   doc .orig_doc_id,
   doc .revs_of_doc_id,
   doc .book_doc_id,
   doc .form_id,
   doc .fe_id,
   doc .doc_revs_cause_id,
   doc .revs_origin_user_id,
   doc .access_1_id,
   doc .access_2_id,
   doc .access_3_id,
   doc .access_4_id,
   doc .access_5_id,
   doc .access_6_id,
   doc .access_7_id,
   doc .access_8_id,
   doc .todo_templ_id,
   doc .todo_templ_a,
   doc .doc_block_id,
   doc .doc_block_a,
   doc .resp_obj_id,
   doc .resp_obj_a,
   doc .due_date,
   doc .not_widrw_relv,
   doc .not_recon_storno_relv,
   doc .is_sim,
   doc .discd_reason_id,
   doc .last_trans_seq_nr,
   doc .obj_id,
   doc .order_type_a,
   doc .not_bonus_relv,
   doc .not_bonus_widrw_relv,
   doc .book_date_cmtd_id,
   doc .isa_relv,
   doc .medium_a,
   doc .is_publ,
   doc .sim_instn_id,
   doc .fe_a,
   doc .ordered_by_a,
   doc .sds_instn_id,
   doc .wfc_id,
   doc .keep_eternal,
   stex.aging_id,
   stex.doc_id,
   stex.order_type_a,
   stex.medium_a,
   stex.exec_type_a,
   stex.macc_id,
   stex.macc_a,
   stex.macc_curry_id,
   stex.pos_a,
   stex.pos_1_curry_id,
   stex.cust_cont_id,
   stex.cust_cont_a,
   stex.mkt_a,
   stex.mkt_id,
   stex.trade_curry_id,
   stex.exec_time,
   stex.price_avrg,
   stex.price_estim_a,
   stex.price_estim,
   stex.price_fix,
   stex.price_shown,
   stex.price_shown_a,
   stex.cmtd_a,
   stex.cmtd_id,
   stex.qty_a,
   stex.gross,
   stex.gross_a,
   stex.net,
   stex.net_a,
   stex.net_in_acc_cur,
   stex.net_in_acc_cur_a,
   stex.intr_calc_method_a,
   stex.cor_idx_val_a,
   stex.sst_duty_ovr_a,
   stex.xrate,
   stex.intr_calc_method_id,
   stex.accr_intr,
   stex.accr_intr_a,
   stex.intr_day_cnt,
   stex.intr_day_cnt_a,
   stex.cor_idx_val,
   stex.limit,
   stex.trig_price,
   stex.visib_size,
   stex.trig_time,
   stex.contr_val,
   stex.varmarg_a,
   stex.varmarg,
   stex.block_undrly,
   stex.pool_param,
   stex.billed_qty,
   stex.reduced_qty,
   stex.mkt_trade_curry_id,
   stex.mkt_trade_curry_a,
   stex.xrate_mkt,
   stex.gross_mkt_trade_curry,
   stex.accr_intr_in_acc_curry,
   stex.accr_intr_mkt_trade_curry,
   stex.trade_curry_a,
   stex.exec_time_a,
   stex.book_text_templ_a,
   stex.book_text_templ_id,
   stex.book_text_a,
   stex.book_text,
   stex.book_text_short_a,
   stex.book_text_short,
   stex.cost_ovr_id,
   stex.sst_duty_ovr_id,
   stex.cntprty_cont_id,
   stex.cnt_cust_cont_id,
   stex.is_mantle_doc,
   stex.pool_distr_mtd_id,
   stex.cnt_book_mon_pos_id,
   stex.cnt_book_sec_pos_id,
   stex.msg_trx_create_time,
   stex.msg_trx_status,
   stex.settle_extl_gen,
   stex.qty_2,
   stex.vwap_time_from,
   stex.vwap_time_to,
   stex.is_uncalced,
   stex.oper_sp_id,
   stex.val_date_clt,
   stex.val_date_clt_a,
   stex.prepay_amt,
   stex.strat_type_id,
   stex.pprdmpt_cash_to_rcv,
   stex.fe_bp_a,
   stex.cntprty_cont_a,
   stex.cust_prop_type_id,
   stex.cust_prop_type_a,
   stex.cust_prop_cont_id,
   stex.efdd_asset_id,
   stex.efdd_clr_amount,
   stex.efdd_clr_amount_a,
   stex.price_fix_a,
   stex.is_covered_call,
   stex.has_trd_adjust,
   stex.is_await_conf,
   stex.tra_intf_brk_netw_id,
   stex.tra_intf_clt_netw_id,
   stex.post_tra_brk_venue_id,
   stex.post_tra_brk_venue_a,
-- stex.invst_mtd_id,
   invm.name                     investment_driving_amount,
   stex.ordered_by_a,
   stex.is_multi_mkt_cpbl,
   stex.is_multi_mkt_cpbl_a,
   stex.has_multi_mkt,
   stex.prepay_asset_id,
   stex.is_switch,
   stex.tra_venue_id,
   stex.tra_venue_a,
   stex.tra_venue_status_id,
   stex.gtup_type_id,
   stex.gtup_corr_bp_id,
   stex.clt_avsr_type_id,
   stex.clt_avsr_type_a,
   stex.tra_intf_brk_netw_a,
   stex.last_mdf_req_status,
   stex.bk_exec_type_id,
   stex.bk_qty,
   stex.bk_limit,
   stex.bk_trig_price,
   stex.bk_expir_time,
   stex.bk_visib_size,
   stex.stex_valid_constr_id,
   stex.stex_valid_constr_a,
   stex.stex_exec_restr_id,
   stex.stex_trade_restr_id,
   stex.trl_amount,
   stex.stex_trl_amount_type_id,
   stex.ref_instru_id,
   stex.stex_ref_rule_id,
   stex.ref_limit,
   stex.bk_stex_valid_constr_id,
   stex.bk_stex_exec_restr_id,
   stex.reject_reason_id,
   stex.stex_err_fld_id,
   stex.bk_billed_qty,
   stex.otc_id,
   stex.cnt_psafe_bp_id,
   stex.pprdmpt_cash_to_rcv_a,
   stex.efdd_asset_id_a,
   stex.subscr_eqlis_amount,
   stex.aggr_key,
   stex.cntprty_bp_id,
   stex.cntprty_bp_a,
   stex.brk_rtng_chan_id,
   stex.brk_rtng_chan_a,
   stex.swit_buy_asset_id,
   stex.swit_buy_trade_curry_id,
   stex.swit_buy_trade_curry_a,
   stex.swit_buy_amount,
   stex.swit_buy_xrate,
   stex.swit_buy_xrate_a,
   stex.prem,
   stex.unwind_fee,
   stex.unwind_fee_a,
   stex.unwind_md_scen_id,
   stex.unwind_md_scen_a,
   stex.unwind_info_msg
from
   doc                                                      join
   doc_stex             stex on doc .id = stex.doc_id       join
   code_stex_invst_mtd  invm on invm.id = stex.invst_mtd_id
where
  doc.id = 42;
