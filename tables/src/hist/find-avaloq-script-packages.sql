--
-- Find the source text of the most recent version
-- of given Avaloq script packages.
--
select
-- src_id,
   src_name,
   src_text
from (
  select
    src.id       src_id,
    src.name     src_name,
    srch.text    src_text,
    row_number() over (partition by srch.src_id order by srch.seq_nr desc) rn
  from
    code_src_type  srct                                   join
    src            src   on src.src_type_id = srct.id     join
    src_hist       srch  on src.id          = srch.src_id
  where
    srct.intl_id = 'src_script_pkg' and
    src.name in ('ERR', 'FORMAT', 'TAB', 'UTIL')
)
where
  rn = 1
order by
  src_name;
