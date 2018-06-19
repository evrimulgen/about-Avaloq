set serveroutput on size unlimited
rem set pages 50000
declare

   tq84_            varchar2(10) := '...';
   bp_nr            varchar2(10) := '...';

   pers             number;
   bp_acc_owner     number;

   function dt(d date) return varchar2 is
   begin
       return to_char(d, 'yyyy-mm-dd');
   end dt;

   function rpd(txt varchar2, len_ number) return varchar2 is
   begin
       if txt is null then
          return rpad(' ', len_);
       end if;
       return rpad(txt, len_);
   end rpd;

   function num(nm number, pattern varchar2) return varchar2 is
   begin

       if nm is null then
          return rpad(' ', length(pattern) + 1);
       end if;

       return to_char(nm, pattern);

   end num;

   function avq_key_to_obj(intlId varchar2, val in varchar2) return number is
       ret number;
   begin
       select
         k.obj_id into ret
       from
         code_obj_key c                        join
         obj_key      k on c.id = k.obj_key_id
       where
         c.intl_id =  intlId and
         k.key_val =  val;

       return ret;
   exception when no_data_found then
   
       dbms_output.put_line('avq_key_to_obj: no obj found for intlId = ' || intlId || ' and val = ' || val || '<');
       return null;

   end avq_key_to_obj;

   function avq_obj_to_key(intlId varchar2, obj in number) return varchar2 is
       ret varchar2(4000);
   begin

       select
         k.key_val into ret
       from
         code_obj_key c                        join
         obj_key      k on c.id = k.obj_key_id
       where
         c.intl_id =  intlId and
         k.obj_id  =  obj;

        return ret;

   end avq_obj_to_key;

   function avq_code_const_name(id_ number) return varchar is
       ret varchar2(100);
   begin
       if id_ is null then
          return 'n/a';
       end if;

       select
         cc.name into ret
       from
         code_const       cc
       where
         cc.id = id_;
       return ret;
       exception when no_data_found then
         return 'Nothing found in code_const for ' || id_;
   end avq_code_const_name;

   function avq_pers_2_bp_account_owner(pers in number) return number is
       ret number;
   begin

       select
         rel.obj_id into ret
       from
         code_bp_person_rel_type      typ                                                join
         obj_bp_person_rel            rel on typ.id     = rel.bp_person_rel_type_id      join
         obj_bp                       obp on obp.obj_id = rel.obj_id                left join
         code_acc_type                act on act.id     = obp.acc_type_id
       where
         typ.intl_id = 'acc_owner'                       and
      -- 2018-06-19:
      -- Check null intl_id (left join):
         nvl(act.intl_id, 'customer') in ('customer')    and
         sysdate between rel.valid_from and rel.valid_to and
         rel.rel_person_id = pers                        and
      --
      -- 2018-06-18:
      --
         obp.person_type_id is not null -- (= 4 ?)
         ;

      return ret;
   exception
     when too_many_rows then
       
       dbms_output.put_line('avq_pers_2_bp_account_owner: too many rows for pers ' || pers);
       return null;

     when no_data_found then

       dbms_output.put_line('avq_pers_2_bp_account_owner: no row found for ' || pers);
       return null;
--       raise;
   end avq_pers_2_bp_account_owner;

   function avq_bp_nr_2_obj_bp(bp_nr varchar2) return number is
   begin
       return avq_key_to_obj('bp_nr', bp_nr);
   end avq_bp_nr_2_obj_bp;

   function tq84_2_obj_pers(tq84 varchar2) return number is
   begin
       return avq_key_to_obj('tq84$pers_id', tq84);
   end tq84_2_obj_pers;

   function avq_cont_to_nr(cont in number) return varchar2 is
   begin
       return avq_obj_to_key('cont_nr', cont);
   end avq_cont_to_nr;

   function avq_obj_name(obj number) return varchar2 is
       ret varchar2(4000);
   begin

       select name into ret
       from
         obj_name
       where
         obj_id          = obj                        and
         sysdate between date_valid and date_valid_to and
         lang_id         = -1;

       return ret;

   end avq_obj_name;

   procedure avq_trx_of_bp(bp number) is
   begin

       for pf in (
          select *
          from
             obj_cont pf
          where
            bp_id = bp
          order by
             pf.obj_id
          ) loop

         dbms_output.put_line('Portfolio: ' || avq_cont_to_nr(pf.obj_id) || ' (' || pf.obj_id || ')');

         for pos in (

           select
             pos.id         pos_id,
             ass.obj_id     asset_id,
             pos.instru_id
           from
             obj       pos                                 join
             obj_asset ass on pos.instru_id = ass.obj_id
           where
             pos.obj_owner_id = pf.obj_id

         ) loop

           dbms_output.put_line('  Pos: ' || avq_obj_name(pos.asset_id));

           for trx in (

               select
                  evt.doc_id                  doc_id,
                  pkt.book_date,
                  pkt.val_date,
                  pkt.trx_date,
                  pkt.qty_1                   pkt_qty_1,
                  pkt.val_book_ref            pkt_val_book_ref,
                  pkt.val_book_pos            pkt_val_book_pos,
                  mty.name                    meta_typ,
                  cot.name                    order_type
                  ste.tq84$one                tq84_one,
                  ste.tq84$two                tq84_two,
                  ste.tq84$three              tq84_three
               from
                  evt_pkt3        pkt                                        join
                  evt3            evt on pkt.evt_id = evt.id                 join
                  doc             doc on evt.doc_id = doc.id                 join
                  meta_typ        mty on mty.id     = doc.meta_typ_id   left join
                  code_order_type cot on cot.id     = doc.order_type_id left join
                  doc_stex_extn   ste on doc.id     = ste.doc_id
               where
                  pkt.pos_id = pos.pos_id
               order by
                  pkt.val_date

           ) loop

              dbms_output.put_line('     ' || to_char(trx.doc_id, '9999999999') || '   ' ||
                dt(trx.trx_date) || ' ' ||
                dt(trx.val_date) || '  ' ||
                num(trx.pkt_qty_1       ,  '9999990.99') || '  ' ||
                num(trx.pkt_val_book_pos, '99999990.99') || '  ' ||
                rpd(trx.meta_typ    , 20)  || '  ' ||
                rpd(trx.order_type  , 35)
              );

           end loop;

         end loop;

       end loop;

   end avq_trx_of_bp;

begin

   if tq84_ is not null then
      dbms_output.put_line('tq84_ is ' || tq84_);
      pers := tq84_2_obj_pers(tq84_);
      dbms_output.put_line(pers);
      bp_acc_owner := avq_pers_2_bp_account_owner(pers);
   else
      dbms_output.put_line('pb_nr: ' || bp_nr);
      bp_acc_owner := avq_bp_nr_2_obj_bp(bp_nr);
   end if;

   dbms_output.put_line(bp_acc_owner);

   avq_trx_of_bp(bp_acc_owner);

end;
/
