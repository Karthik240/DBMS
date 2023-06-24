DECLARE 
	n1 number:=&n1;
BEGIN
	for i in 1..10 LOOP
	dbms_output.put_line(n1||' X '||i||' = '||n1*i);
	END LOOP;
END;