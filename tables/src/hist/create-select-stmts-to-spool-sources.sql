--
--  Use a cobination of
--    set trimspool on
--    set long 100000000
--    set pages 0
--    set lines 2000
--    set longchunksize 500000
--  and possibly others, too
--

select
 'select ' ||
  '''%%% ' || src_id  || ': ' ||
    src_type || ' - ' ||
   src_name || ''' || chr(10) || ' ||
   'text ' ||
   ' from src_hist where src_id = ' || src_id || ' and seq_nr = ' || hst_seqnr ||
   ';'
from (
  select
    src.id       src_id,
    src.name     src_name,
    srct.intl_id src_type,
    srch.text    src_text,
    srch.seq_nr  hst_seqnr,
    row_number() over (partition by srch.src_id order by srch.seq_nr desc) rn
  from
    code_src_type  srct                                   join
    src            src   on src.src_type_id = srct.id     join
    src_hist       srch  on src.id          = srch.src_id
  where
  -- srct.intl_id = 'src_script_pkg'
     src.name like '%FOO_BAR%'
)
where
  rn = 1
order by
  src_name;
