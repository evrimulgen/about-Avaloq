select
   aem.id                       aging_entity_map_id,
   aem.aging_entity_id,
   ent.name                     entity_name,
   ent.descn                    entity_description,
   aem.parent_col_name,
   aem.parent_id,
   aem.parent_aging_entity_id,
   aem.grp,
   aem.part_attr,
   aem.eternal_only,
   ent.activ                    entity_active
from
  aging_entity_map   aem left join
  code_aging_entity  ent on aem.aging_entity_id = ent.id
where
  aem.tab = 'MSG';
