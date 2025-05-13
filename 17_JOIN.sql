/*
17 JOIN

- cosa sono
-Inner JOIN
- LEFT JOIN
- RIGHT JOIN
- full join (non disponibili IN MYSQL ---> usiamo union)
- cross join (saltiamo)
*/

SELECT dipendenti.id_dipendente, dipendenti.nome, uffici.nome_ufficio
FROM dipendenti
INNER JOIN uffici ON dipendenti.id_ufficio = uffici.id_ufficio;
