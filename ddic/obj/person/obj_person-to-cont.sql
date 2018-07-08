begin script#.do_dyn(q'{
declare
    pers_id id obj_person;
begin
    pers_id := lookup.person_id("1234587988");
    session.debug('Person id: ' || pers_id);
    with obj_person(pers_id) as pers do
         for bp_rel in pers.bp_person_rel_list loop
             if bp_rel.src_obj.obj_type.intl_id = 'bp' then
                with obj_bp(bp_rel.src_obj) as bp do
                     session.debug('bp: ' || bp.name);
                     for cont in bp.cont_list('+') loop
                         session.debug('cont nr: ' || cont.extn.cont_nr);
                     end loop;
                end with;
             end if;
         end loop;
    end with;
end;}');
end;
/
