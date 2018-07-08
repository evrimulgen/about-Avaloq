select
  script#.eval_expr('get_code("meta_typ"     , 9)'), -- Settlement
  script#.eval_expr('get_code("code_obj_type", 5)')  -- Asset
from
  dual;
