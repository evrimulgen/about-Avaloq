with nd (id, name, fld_domn, fld_type, ref_tree_id, ref_node_id, tree_level, tree_id, seq_nr) as (
  select
    mn.id,
    mn.name,
    mn.fld_domn,
    mn.fld_type,
    mn.ref_tree_id,
    mn.ref_node_id,
    mn.tree_level,
    mn.tree_id,
    mn.seq_nr
  from
    meta_tree_node mn
  where
    tree_id        = 3527 and
 -- tree_id        = 1489 and
    tree_level     =  1
UNION ALL
  select
    mn.id,
    rpad(' ',  nd.tree_level * 2) || mn.name,
    mn.fld_domn,
    mn.fld_type,
    mn.ref_tree_id,
    mn.ref_node_id,
    mn.tree_level,
    mn.tree_id,
    mn.seq_nr
  from
    nd join meta_tree_node mn on nd.tree_id    = mn.tree_id                and
                                 nd.id         = mn.parent_tree_node_id    and
                                 nd.tree_level = mn.tree_level - 1
)
search depth first by seq_nr set dummy
select
   nd.name,
   nd.id,
   nd.fld_domn,
   nd.fld_type,
   nd.ref_tree_id,
   nd.ref_node_id
from
   nd
;
