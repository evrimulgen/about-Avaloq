select
  jobe.stmt,
  bind_val.par_name,
  bind_val.par_val,
  bind_val.par_type_id
from
  out_job_extn             jobe,
  table(jobe.bind_val_tab) bind_val
where
  jobe.out_job_id  = 137134377;
