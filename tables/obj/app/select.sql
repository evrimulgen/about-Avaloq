select
  txt.text_xx,
  app.order_by,
  app.start_page,
  app.dtm,
  app.tab_name,
  app.pillar,
  app.intf,
  app.descn      app_description,
  app.hira,
  app.schema
from
  obj_app  app left join
  out_text txt on app.out_text_key = txt.key;
