DECLARE
	n1 number:=&n1;
	n2 number:=&n2;
	ma number;
	mi number;
	lcm number;
	gcd number;
	i number;

BEGIN
	if(n1>n2)then
	ma:=n1;
	mi:=n2;
	else
	ma:=n2;
	mi:=n1;
	END if;
	for i in 2..mi LOOP
	if(MOD(mi,i)=0 AND MOD(ma,i)=0) then
	lcm:=i;
	EXIT;
	end if;
	end LOOP;
	
	for i in REVERSE 1..mi LOOP
	if(MOD(mi,i)=0 AND MOD(ma,i)=0) then
	gcd:=i;
	EXIT;
	end if;
	end LOOP;
	
	insert into demo_tab values(n1,n2,lcm,gcd);
	
END;	