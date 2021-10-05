-- 1. Create a function that returns the number of Saturdays between the two inputted dates.

CREATE OR REPLACE FUNCTION count_Saturday
    RETURN number
        IS
        
        -- Date1 ve Date2 deyisenlerini declare edek
        -- Cnt number formatda daxil edib 0-kimi tanidaq
        Date1 Date;
        Date2 Date;
        Cnt Number:=0;
    BEGIN 
        Date1:='&Date1';
        Date2:='&Date2';
        Date1:=next_day(Date1, 'SATURDAY');                 -- Date1-e daxil etdiyimiz Date1-den sonra ilk Saturday menimsedir
   
   -- while loop vasitesile sert yoxlayir
        while(Date1<=Date2)                                 -- Date1 Date2-den kicikdirse loop-a dus
    LOOP
        Cnt:=Cnt+1;                                         -- Cnt 1-1 artir
        Date1:=Date1+7;                                     -- Date1-e menimsetdiyimiz ilk Saturday-in oldugu tarixi 7gun(1hefte olmaqla) artir, Date2-e catana kimi
    END LOOP;
        dbms_output.put_line('count of Saturdays:'||Cnt);
        RETURN Cnt;
    END;
    / 

begin
dbms_output.put_line(count_Saturday);
end;
/