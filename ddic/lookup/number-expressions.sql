select
  script#.eval_expr('lookup.number("1.5k"         )') thousand_fivehundred,
  script#.eval_expr('lookup.number("42m"          )') forty_two_millions
from
  dual;
