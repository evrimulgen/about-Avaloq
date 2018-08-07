--
-- ts_mkt: get historical market price data for assets.
--
select
   mkt.mkt_timestamp,
   mkt.eff_date,
-- bas.obj_id               asset_id,
   ass.name_intl            asset,
   mkt.val_1,
   mkt.val_2,
   mkt.prio,
-- bas.id,
-- bas.md_scen_id,
   mds.name                 market_scenario,
   pqt.name                 price_quote_type,
   mpt.name                 market_price_type,
-- bas.md_domn_id,
   mdd.name                 market_domain,
   bas.signt,
-- bas.curry_id,
   cur.name_intl            currency,
-- bas.mkt_id,
   mkt.name_intl            market,
   bas.ts_prio_base_id,
-- mkt.id,
-- mkt.ts_base_id,
-- mkt.ts_prio_base_id,
   mkt.ts_log_id,
   mkt.ovr_dlv_timestamp,
-- mkt.price_src_id,
   psr.name                  price_source,
-- mkt.price_quote_type_id,
-- mkt.mkt_price_type_id,
   mkt.custr_price_type_id,
   mkt.trl
from
   ts_mkt                mkt                                                  join
   ts_base               bas on mkt.ts_base_id = bas.id                       join
   obj_name_intl         ass on ass.obj_id     = bas.obj_id              left join
   code_price_src        psr on psr.id         = mkt.price_src_id        left join
   code_price_quote_type pqt on pqt.id         = mkt.price_quote_type_id left join
   code_mkt_price_type   mpt on mpt.id         = mkt.mkt_price_type_id   left join
   code_md_scen          mds on mds.id         = bas.md_scen_id          left join
   code_md_domn          mdd on mdd.id         = bas.md_domn_id          left join
   obj_name_intl         cur on cur.obj_id     = bas.curry_id            left join
   obj_name_intl         mkt on mkt.obj_id     = bas.mkt_id
where
   bas.obj_id  = 34246926      and -- Asset id
   mdd.name    ='asset price'
order by
   mkt.mkt_timestamp desc
;
