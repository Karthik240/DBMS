DECLARE 
	a number:=0;
	b number:=1;
	c number;
	n number:=&n;
BEGIN
	dbms_output.put_line('fibanocii 0 = '||a);
	dbms_output.put_line('fibanocii 1 = '||b);
	for i in 2..n-1 loop
	c:=a+b;
	a:=b;
	b:=c;
	dbms_output.put_line('fibanocii '||i||' = '||c);
	end LOOP;
END;