-- 6.You running the query: select count(*) from some_table;
-- After 5 mins you are getting results: 0
-- Why it took that long ?;


explain plan 
  for
     select statement;

- explain plan-la select-i neyin lengitdiyine baxmaq olar.

- index olmadigi ucun leng isleye biler;

- Hemcinin count(id) olsa da, 
id -de ikinci bir indeks yoxdursa yene de 
cox leng isleye bil?r (id -nin de PK oldugunu dusunek).
Bütün m?lumatlar B-Tree indeksinde saxland?g?ndan, 
select count(PK_COLUMN) -in islemesi ucun butun melumatlar bir-bir oxunmalidir.
PK ucun ikinci bir indeks varsa, count ucun butun melumatlari bir -bir oxumaga ehtiyac olmaya biler.
