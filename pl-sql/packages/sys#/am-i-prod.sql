begin  
  dbms_output.put_line('I am ' || case when sys#.is_prod then '' else 'not ' end || 'prod.');
end;
/
