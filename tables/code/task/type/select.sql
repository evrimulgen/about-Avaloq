select
  substr(name      , 1, 15) name,
  substr(search_key, 1, 11) search_key
from
  code_task_type
order by name
;
-- NAME            SEARCH_KEY
-- --------------- -----------
-- All
-- Messages        MSG
-- Order Book      Order
-- Others          Others
-- Programs        Program
-- Reports         Report
