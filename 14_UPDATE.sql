/*
14 UPDATE

- SINTASSI
- MODIFICARE UNA COLONNA
- MODIFICARE PIU' COLONNE
- MODIFICARE PIù RIGHE INSIEME
- NON DOBBIAMO OMETTERE WHERE!!!

*/

UPDATE nome_tab -- AGGIORNA LA TABELLA
SET colonna = valore -- ADNADNDO A METTERE UN VALORE IN DETERMINATA CASELLA
WHERE condizione; -- DOVE LA CONDIZIONE è LA SEGUENTE


UPDATE clienti 
SET indirizzo = 'Corso della Vittoria'
WHERE id_cliente = 1;

UPDATE clienti 
SET indirizzo = 'Corso della Liberazione'
WHERE id_cliente = 1 OR id_cliente = 3; -- cambiando più valori simultaneamente
-- WHERE città = 'Roma'; dove ho èiù valori nella tabella
-- OPPURE:
UPDATE clienti 
SET indirizzo = 'Corso della Liberazione'
WHERE id_cliente in (1,3);

-- MODIFICARE PIU' COLONNE
UPDATE clienti
SET indirizzo = 'Via Augusto', città = 'Roma'
WHERE id_cliente = 1;

-- Se ometto where l'intero db varierà! è un update totale!