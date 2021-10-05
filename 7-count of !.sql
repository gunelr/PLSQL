-- 7.Need to find the 

--'Hello World! It is a good day!!!'
--Here its 4.
--Use only SQL
--Give more than one solution.


-- regexp_count vasitesile ifadede olan !-larin sayini tap
SELECT REGEXP_COUNT ('Hello World! It is a good day!!!', '!') as count
FROM dual;

-- ifadenin umumi uzunlugu - !-larin null edilenden sonra qalan uzunlugu = !-larin sayi
select length('Hello World! It is a good day!!!') - length(replace('Hello World! It is a good day!!!','!',null))  as count
from dual;

select coalesce(length('Hello World! It is a good day!!!') - length(replace('Hello World! It is a good day!!!','!',null)), length('Hello World! It is a good day!!!'), 0) 
from dual;

--regexp_replace -le butun !-lari null et, sonra necesinin null edib onun uzunlugunu tap
select length(regexp_replace('Hello World! It is a good day!!!', '[^!]', '')) as count 
from dual;