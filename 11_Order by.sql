/*
11 ORDER BY
Utile per ordinare le tabelle in visualizzazione

- sintassi
- ordinare una sola colonna
- ordinare per multiple colonne


*/

-- SINTASSI
SELECT colonne 
FROM nome_tab
ORDER BY nome_colonna ASC endente | DESC endente;


SELECT * 
FROM dipendenti
ORDER BY stipendio ASC | DESC;

-- Per ordinare in base a colonne multiple utiliziamo la seguent esintassi
SELECT *
FROM dipendenti
ORDER BY nome, cognome ASC; -- Usiamo la virgola! Cognome incide sul nome nel caso in qui sia già tutto ordinato e ritorna uitile quando abbiamo nomi uguali!!