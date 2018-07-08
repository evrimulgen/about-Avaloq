--
-- Seems to call lookup_ddic#.date_(:p1, :p2, :p3, :p4) in the background.
--
select
  script#.eval_expr('lookup.date("today +3"     )') today_plus_3,
  script#.eval_expr('lookup.date("som"          )') start_of_month,
  script#.eval_expr('lookup.date("today +5w -2v")') today_plus_5_w_minus_2_v_days
from
  dual;
