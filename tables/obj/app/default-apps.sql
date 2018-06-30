--
-- Does selecting apps where order_by is null return
-- default apps?
--
select
  app.order_by               app_order_by,
  substr(txt.text_xx, 1, 50) app_text
from
  obj_app  app left join
  out_text txt on app.out_text_key = txt.key
where
  app.order_by is not null
order by
  app.order_by;
-- 
-- APP_ORDER_BY APP_TEXT
-- ------------ --------------------------------------------------
--            1 Portfolio
--            1 Collateral Management
--            2 Tasks
--            3 Central Services
--            3 PFM Desk
--            3 RM Workplace
--            3 Credit Desk
--            3 CRM Desk
--            4 Lookup
--            5 Navigator
--            6 AFS Administration
--            6 Settings
--            9 Market Risk Desk
--            9 Limit System Desk
--            9 Liquidity Risk Desk
--            9 Table Editor
--           10 Parameterisation
--
