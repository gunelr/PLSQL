-- 3.Create a function that finds the sum of digits of the inputted number.


CREATE OR REPLACE FUNCTION sumdigits
   RETURN number
      IS
    -- deyisenleri number tipinde declare edek
    v_number        NUMBER; 
    v_sum_digits    NUMBER; 
    v_mod           NUMBER; 
BEGIN 
    v_number     := '&NUMBER';                          -- input parametr alaq
    v_sum_digits := 0; 
  
    -- while loop vasitesile serti yoxlayaq
    WHILE v_number != 0 LOOP                                   -- n 0-a beraber deyilse, not null-dursa loop-a dus
        v_mod        := MOD(v_number, 10);              -- daxil edilen reqemin 10-a bolunmesinden alinan qaligi tap
        v_sum_digits := v_sum_digits + v_mod;           -- bu qaligi her defe temp_sum-in uzerine gel
        v_number     := Trunc(v_number / 10);           -- daxil edilen reqemin-10-a bolunmesinden alinan neticeni trunc et yeni tam hisseni cixar
    END LOOP; 
    dbms_output.Put_line('REQEMLERI CEMI '|| v_sum_digits||'-DIR.'); 
    
    RETURN v_sum_digits;
END; 
/

begin
dbms_output.put_line(sumdigits);
end;
/