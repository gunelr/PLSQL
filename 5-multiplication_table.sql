
-- 5. Print(dbms_output) the multiplication table to 9.
/*1x1=1
1x2=2
...
1x9=9
*/

DECLARE 
x NUMBER(2); 
y NUMBER(2); 
BEGIN 
 
<<OUTER>>  
 
 -- vuruq * vuruq = hasil
 
FOR x IN 1..9 LOOP                  -- vuruqlarin 1-den 9-a kimi olmasi ucun 
   <<INNER>> 
        FOR y IN 1..10 LOOP         -- her reqemin son vurugu 10 olsun 
            DBMS_OUTPUT.PUT_LINE(x || ' x ' || y || ' = ' || x*y);  -- vuruq * vuruq = hasil
        END LOOP INNER; 
            dbms_output.new_line();
END LOOP OUTER; 

END; 
/


--daxil etdiyimiz reqemin vurma cedveli 
declare
n number;
i number;
 
begin
n:=&n;
for i in 1..10
loop
dbms_output.put_line(n||' x '||i||' = '||n*i);
end loop;
end;
/
