-- 2.Create a function that finds whether a given string is palindrome or not.

CREATE OR REPLACE FUNCTION palindrome(v_word varchar2)
   RETURN varchar2
      IS
    
    -- eyni data type -de deyisenleri declare edek 
    v_reverse VARCHAR2(20); 
    v_assign  VARCHAR2(10); 
BEGIN 
    FOR i IN REVERSE 1..Length(v_word)                    -- reverse (1-den  s inputunun uzunluguna qeder)
    LOOP       
        v_reverse := Substr(v_word, i, 1);                --s inputunun, i-ci character-inden 1-ci character-ine kimi 
  
        -- || string-leri birlesdirmek ucun istifade edilir 
        v_assign := v_assign ||''||v_reverse;                      -- t-ye menimsedirik s inputunun tersine oxunus veziyyetini(l-i)
    END LOOP; 
  
    IF v_assign = v_word THEN  -- eger duzune ve tersine oxunanda eynidirse
      dbms_output.Put_line(v_assign ||''||' is palindrome'); 
    ELSE 
      dbms_output.Put_line(v_assign||''||' is not palindrome'); 
    END IF; 
    
    RETURN v_assign;
END; 
  /
  
  declare
  c varchar2(20);
  begin
  c:=palindrome('asdfgfdsa');
  dbms_output.put_line(c);
  end;
  /
