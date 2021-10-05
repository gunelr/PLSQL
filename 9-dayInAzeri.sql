-- 9.*Print the days of the current month in Azeri language like
/* 01.10.2021 CÜM?

02.10.2021 ??NB?

03.10.2021 BAZAR
...
30.10.2021 ??NB?
31.10.2021 BAZAR
*/

select to_char(trunc(sysdate,'MM')+level-1,                                          -- sysdate-den month goturur ve 1-1 artirir level ile;
                                                                                     -- 1 yaziriq ki ayin evvelinden baslasin
'dd.mm.yyyy Day', 'NLS_DATE_LANGUAGE = azerbaijani') as DayofCurMonths_AzeriLang     -- istediyiniz formati daxil edirik: 31.10.2021 BAZAR;
from dual 
connect by level <= TO_CHAR(LAST_DAY(to_date(sysdate,'dd.mm.yyyy')),'DD');           -- ayin son gununden kicik ve ona beraber olanadek


--select to_char(sysdate, 'dd.mm.yyyy Day', 'NLS_DATE_LANGUAGE = azerbaijani') from dual  ; 
--her ayin sonunu generate edir
--select trunc(trunc(to_date(sysdate,'dd-mm-yyyy'),'month')+rownum*27,'month')-1 from dual connect by rownum<=366;
--select trunc(trunc(sysdate,'month')+rownum*30,'month')-1 from dual connect by rownum<=12;
