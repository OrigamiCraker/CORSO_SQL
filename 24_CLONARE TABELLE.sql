/*
24 CLONARE LE TABELLE

- Introduzione:
- copiate struttura e dati di una tabella
    CREATE TABI_E nuova_tabella LIKE tabella_originale;
    INSERT INIO nuova_tabella SELECT * FROM tabella_originale;
- copiare solo dati
    CREATE TABLE nuova_tabella SEI_ECT * FROM tabella_originale;
*/

-- Clona completyamente la tabella, compresi i constraints ma non i dati
CREATE TABLE tab_clonata
LIKE prova;

-- La query syccessiva permette anche di popolarla identica alla tabella di partenza
INSERT INTO tab_clonata
SELECT * 
FROM prova;

-- Cpiare solo ed esclusivamente i dati senza costraints
CREATE TABLE tabella_clonata_semplice 
SELECT * 
FROM prova;


