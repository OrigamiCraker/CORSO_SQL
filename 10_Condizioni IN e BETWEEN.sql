/*
10 IN  e BETWEEN

- sintassi IN
- IN E NON IT
- sinntassi BETWEEN
- BETEEN E NOT BETWEEN



SELECT nome_colonna(s)
FROM table_name
WHERE nome_colonna IN (val1, val2, ..., val3)

SELECT nome_colonna(s)
FROM table_name
WHERE nome_colonna BETWEEN minvalue ANDS maxvalue

*/

-- sintassi di IN

SELECT *
FROM dipendenti
WHERE mansione IN ('impiegato', 'commerciale'); -- Con IN identifichiamo che il valore di mansione è all'interno di una lista di valori. Ha lo stesso valore di where

-- Vale anchge per il valore int
SELECT *
FROM dipendenti
WHERE stipendio IN (1700, 1800); 

SELECT *
FROM dipendenti
WHERE stipendio NOT IN (1700, 1800); -- Prende tutto ciò che non ha i due valori nella lista


-- SINTASSI BETWEEN
SELECT *
FROM dipendenti
WHERE data_assunzione BETWEEN '2022-01-01' AND '2024-12-31'; -- Possiamo cercare in un raggio di valori

-- COmprende i valori compresi quelli scelti ---> [ : ]

-- NOT BETWEEN fa invece il contrario, ossia mi ritorna ciò che non è nel range da me scelto

