/*
12 LIMIT
serve a specificare un limite delle tabelle che vogliamo vedere.
- sintassi
- limit offset

*/

SELECT colonne FROM tabella LIMIT numero, offset;


SELECT * 
FROM dipendenti 
ORDER BY stipendio DESC 
LIMIT 3; -- VEDRò SOLTANTO 3 RIGHE!

SELECT * 
FROM dipendenti 
ORDER BY stipendio ASC
LIMIT 2, 2; -- Il secondo numero, l'offsett permette di dire quando iniziare a contare il limite: inizia a prenderne 2 dopo 2 records
