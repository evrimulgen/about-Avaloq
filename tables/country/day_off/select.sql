select
   nam.name   country_name,
   to_char(cdo.day, 'Dy'),
   cdo.day,
   cdo.is_bank_day 
from
   country_day_off cdo   left join
   obj_name_intl   nam on cdo.country_id = nam.obj_id
where
   sysdate between cdo.day - 30 and cdo.day + 30;
