/*
16 TRUNCATE

- SINTASSI
- PULIAMO LA TABELLA
- TRUNCATE vs DELETE
    TRUNCATE ricrea la tabella aggiornando anche auto increment
    DELETE permette di filtrare le righe da cancellare ad esmepio con WHERE
    TRUNCATE è un comando di DDL (Data Definition tanguage): sono quei comandi che facciamo sulla STRUTTURA dei database (ALTER TABLE AD ESEMPIO)
    DELETE è un comando di DHL (Data Mani pula tion Language): comandi per modificare i campi delle tabelle del database
    TRUNCATE è più veloce perchè cancella a prescindere mentre DELETE scansiona ogni riga
*/

TRUNCATE TABLE nome_tab;
-- Il comando non solo svuota la tabella ma svuota completamente incremnti, ricrea la tabella resettanto l'autoincrement!
-- A differe
