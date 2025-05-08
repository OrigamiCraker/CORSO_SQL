/* 9 AND OR o NOT
- Sintassi AND
- Sintassi OR
- Sintassi NOT

- COMBINAZIONI
*/

SELECT colonna!, colonna2, colonnaN...
FROM tabella
WHERE condizione AND condizione2 AND condizion....

SELECT *
FROM dipendenti
WHERE stipendio >= 1500 AND mansione = 'impiegato'; -- Uno e l'altro
 
-- Nel nostro DB vedremo due record (risultati delle righe)

SELECT *
FROM dipendenti
WHERE stipendio > 1800 OR mansione = 'impiegato'; -- o uno o l'altro


SELECT *
FROM dipendenti
WHERE NOT mansione = 'impiegato';


-- COMBINAZIONE
-- per avere delle macro condizioni utilizziamo le ()

SELECT *
FROM dipendenti
WHERE (mansione = 'impiegato' AND stipendio = 1400) 
OR (mansione = 'data analyst' AND stipendio > 1400);