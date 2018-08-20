select
   fil.id                      file_id,
   fil.filename,
   fil.filesz                  file_size,
-- fil.file_type_id,
   ftp.name                    file_type,
-- fil.file_status_id,
   fst.name                    file_status,
-- fil.file_idx_batch_id,
   bat.filename                filename_batch,
-- fil.file_idx_aggr_id,
   agr.filename                filename_aggr,
-- fil.file_idx_cover_id,
   cvr.filename                filename_cover,
-- fil.char_set_id,
   chs.name                    char_set,
   fil.date_dsp,
   fil.order_dsp,
   fil.cnt_dsp,
   fil.date_del,
-- fil.sec_user_write_id,
   suw.name                    sec_user_write,
   suw.oracle_user             oracle_user_write,
-- fil.sec_user_dsp_id,
   sud.name                    sec_user_dsp,
   sud.oracle_user             oracle_user_dsp,
   fil.timestamp_init,
   fil.timestamp_write_start,
   fil.timestamp_write_end,
   fil.timestamp_dsp_start,
   fil.timestamp_dsp_end,
   fil.timestamp_err,
   fil.err,
   fil.printer_id,
   fil.trl,
   fil.pages,
   fil.stream_log_id,
   fil.stream_id,
   fil.stream_gen,
   fil.idx_date_dsp,
   fil.idx_order_dsp,
   fil.stream_file_type_id,
   fil.idx_stream_file_type_id,
   fil.io_subdir,
   fil.bu_subdir,
   fil.bu_id,
   fil.idx_bu_id,
   fil.sds_resv_file_state_id
from
   file_idx         fil                                    left join
   code_file_type   ftp  on fil.file_type_id      = ftp.id left join
   code_file_status fst  on fil.file_status_id    = fst.id left join
   code_char_set    chs  on fil.char_set_id       = chs.id left join
   file_idx         bat  on fil.file_idx_batch_id = bat.id left join
   file_idx         agr  on fil.file_idx_aggr_id  = agr.id left join
   file_idx         cvr  on fil.file_idx_cover_id = cvr.id left join
   sec_user         suw  on fil.sec_user_write_id = suw.id left join
   sec_user         sud  on fil.sec_user_dsp_id   = sud.id
;
