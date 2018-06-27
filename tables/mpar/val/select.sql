select
  val.val,
  val.idx_1_id,
  val.idx_2_id,
  val.idx_3_id,
  def.signt,
  def.tab,
  par.mpar_par_type_id,
  par.seq_nr,
  par.name,
  par.type,
  par.ctype,
  par.cond,
  par.lookup_fld,
  par.mand,
  par.out_text_label_key,
  par.descn
from
  mpar_val val                             join
  mpar_def def on val.mpar_def_id = def.id join
  mpar_par par on val.mpar_par_id = par.id
;
