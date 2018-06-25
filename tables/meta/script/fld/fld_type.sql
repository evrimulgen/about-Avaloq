select
  count(*),
  fld.fld_domn,
  case when obj.object_type is not null then 'is a ' || obj.object_type else fld.fld_type end
from
  meta_script_fld   fld   left join
  dba_objects       obj   on upper(fld.fld_type) = obj.object_name and
                          obj.owner = 'K' and
                          obj.object_type != 'TABLE PARTITION'
where
  nvl(fld.is_obsolete, '-') != '+' and
  nvl(fld.activ      , '-')  = '+'
group by
  fld.fld_domn,
  case when obj.object_type is not null then 'is a ' || obj.object_type else fld.fld_type end
order by
  fld.fld_domn,
  count(*) desc;
