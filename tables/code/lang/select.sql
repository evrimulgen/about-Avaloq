select
   lng.intl_id,
   lng.name              language,
   lng.iso_code          lang_iso_code,
   lng.nls_sort_language,
   fmt.nls_date_language,
   --
   fmt.nls_numeric_characters,
   fmt.nls_numeric_characters_amount,
   fmt.nls_numeric_characters_qty,
   --
   lng.country,
   --
   fmt.date_fmt_long,
   fmt.date_fmt_medium,
   fmt.date_fmt_short,
   --
   fmt.date_time_fmt_long,
   fmt.date_time_fmt_medium,
   fmt.date_time_fmt_short,
   --
   fmt.date_time_tz_fmt_long,
   fmt.date_time_tz_fmt_medium,
   fmt.date_time_tz_fmt_short,
   --
   fmt.date_dm_fmt_long,
   fmt.date_dm_fmt_short
from
   code_lang lng   join
   code_fmt  fmt on lng.fmt_id = fmt.id
order by
   lng.name;
