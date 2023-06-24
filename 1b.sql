DECLARE
	n number:=&n;
	dup number:=n;
	num number:=0;
BEGIN
	while(dup>0) loop
	num:=(num*10)+(dup-(trunc(dup/10)*10));
	dup:=trunc(dup/10);
	end loop;
	dbms_output.put_line(num);
	if(n=num)then
		dbms_output.put_line('given number is palindrome');
	else
		dbms_output.put_line('given number is not palindrome');
	end if;
END;
