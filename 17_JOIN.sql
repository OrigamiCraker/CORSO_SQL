/*
17 JOIN

- cosa sono
-Inner JOIN
- LEFT JOIN
- RIGHT JOIN
- full join (non disponibili IN MYSQL ---> usiamo union)
- cross join (saltiamo)
*/

SELECT campi (e metteremo anche campi della tabella due) --inseriamo tutti i campoi che ci servono nel processo da entreambe le tabelle
FROM tabella_1 -- il from è per dire da dove prendiamo per spostare
INNER JOIN tabella_2 ON condizione; -- su quale tabella e con quale condizione

-- JOIN possiamo dire al pc di creare delleconnessioni tra le tabelle per incrociarle!


SELECT dipendenti.id_dipendente, dipendenti.nome, uffici.nome_ufficio
FROM dipendenti -- è la prima tabella che prendiamo, la tabella di sinistra
INNER JOIN uffici ON dipendenti.id_ufficio = uffici.id_ufficio; -- Vogliamo vedere però solo quelli che hanno l'id_ufficio nei dipendenti appartenente a quello di uffici ( inull non vengono visti)

-- visualizzo una nuova tabella contenente i campi scelti tra le due tabellke che hanno correlazione tra loro 


-- LEFT JOIN: prende tutta la tabella di sx e prende solo la parte che combacia con quella di sinistra (prenderà anche i null ma solo gli uffici alla quale i dipendenti sono assegnati!)
-- Se ho un ufficio in uffici che non è stato "popolato" in reale non lo vedremo!
SELECT dipendenti.id_dipendente, dipendenti.nome, uffici.nome_ufficio
FROM dipendenti -- Serve per dichiarare l'ordine di destra e sinistra
LEFT JOIN uffici ON dipendenti.id_ufficio = uffici.id_ufficio;



-- RIGHT JOIN: fa quelo che ha fatto LEFT ma al contrario. Da tutti gli uffici che si ha e quali persone sono assegnate
SELECT dipendenti.id_dipendente, dipendenti.nome, uffici.nome_ufficio
FROM dipendenti 
RIGHT JOIN uffici ON dipendenti.id_ufficio = uffici.id_ufficio;



-- UNION: unisce tutte e due le tabelle. 
-- La clausola UNION unisce i risultati di due o più SELECT con lo stesso numero di colonne e tipi compatibili, rimuovendo i duplicati (usa UNION ALL se vuoi includere duplicati).

-- Prendiamo in considerazione
-- clienti_online
/*
+----+------------+
| id | nome       |
+----+------------+
| 1  | Luca Rossi |
| 2  | Anna Verdi |
+----+------------+

-- clienti_fisici
+----+-------------+
| id | nome        |
+----+-------------+
| 1  | Anna Verdi  |
| 2  | Marco Neri  |
+----+-------------+
*/

SELECT nome FROM clienti_online
UNION
SELECT nome FROM clienti_fisici;
--restituisce solo Luca Rossi, Anna Verdi, Marco Neri (niente duplicati).


SELECT nome FROM clienti_online
UNION ALL
SELECT nome FROM clienti_fisici;
UNION ALL: restituisce anche Anna Verdi due volte.


-- CROSS JOIN
-- Il CROSS JOIN restituisce il prodotto cartesiano tra le righe delle due tabelle: ogni riga della prima è combinata con tutte le righe della seconda.
/*
Supponiamo di avere:

-- colori
+--------+
| colore |
+--------+
| Rosso  |
| Blu    |
+--------+

-- taglie
+-------+
| taglia|
+-------+
| S     |
| M     |
+-------+
*/

SELECT colori.colore, taglie.taglia
FROM colori
CROSS JOIN taglie;
/*
+--------+--------+
| colore | taglia |
+--------+--------+
| Rosso  | S      |
| Rosso  | M      |
| Blu    | S      |
| Blu    | M      |
+--------+--------+
Hai 2 × 2 = 4 combinazioni.
*/