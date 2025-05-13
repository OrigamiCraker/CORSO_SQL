-- Disattiva l'autocommit (opzionale in alcuni DBMS)
SET AUTOCOMMIT = 0;

-- Inizio della transazione
START TRANSACTION; -- oppure: BEGIN;

-- 1° istruzione: aggiorna l'indirizzo del cliente 1
UPDATE clienti
SET indirizzo = 'Via Roma 10'
WHERE id_cliente = 1;

-- 2° istruzione: aggiorna l'indirizzo del cliente 2
UPDATE clienti
SET indirizzo = 'Via Milano 20'
WHERE id_cliente = 2;

-- Se tutto è andato bene, conferma le modifiche
COMMIT;

-- Se invece qualcosa va storto (es. errore nel mezzo), puoi annullare tutto con:
-- ROLLBACK;


-- ESEMPIO
START TRANSACTION;

UPDATE clienti
SET indirizzo = 'Via Roma 10'
WHERE id_cliente = 1;

-- Simuliamo un errore: aggiorniamo un ID inesistente (es. 9999)
UPDATE clienti
SET indirizzo = 'Via Fantasma'
WHERE id_cliente = 9999;

-- Annulliamo tutto, perché qualcosa è andato storto
ROLLBACK;


-- Prima di eseguire modifiche massive:
START TRANSACTION; -- Senza questo comando non posso usare rollback!!!!!
-- BEGIN TRANSACTION bloccca il database fino a fine risultato!

-- Esegui l'UPDATE, con WHERE controllata
UPDATE clienti
SET indirizzo = 'Corretto'
WHERE città = 'Milano';

-- Se tutto è OK:
COMMIT;

-- Se ti accorgi di un errore:
ROLLBACK;
