/*
19 ALTER 

- SPIEGAZIONE
- AGGIUNGERE UNA NUOVA COLONNA

- aggiungere nuova colonna
  ALTER TABLE table_name ADD column_name data_type constraints;

- cambiare posizione alla colonna
  ALTER TABLE table_name MODIFY column_name column_definition AFTER column_name;

- aggiungere constraint
  ALTER TABLE table_name ADD UNIQUE (column_name,...);

- cambiare nome di una colonna
    ALTER TABLE clienti RENAME COLUMN telefono TO telefono_contatto;
    ALTER TABLE clienti CHANGE telefono telefono_contatto VARCHAR(10);

- rimuovere una colonna
  ALTER TABLE table_name DROP COLUMN column_name;

- cambiare tipo di dato di una colonna
  ALTER TABLE table_name MODIFY column_name new_data_type;

- rinominare tabella
  ALTER TABLE current_table_name RENAME new_column_name;

*/

-- AGGIUNGERE NUOVA colonna
ALTER TABLE rapporto_clienti 
ADD PROVA VARCHAR(50) NOT NULL;

-- cambiare posizione alla colonna
ALTER TABLE rapporto_clienti 
MODIFY PROVA VARCHAR(50)
AFTER id_rapporto;


-- aggiungere constraint e rimuovere
ALTER TABLE rapporto_clienti 
ADD UNIQUE (prova);

ALTER TABLE clienti DROP INDEX p_iva; -- per UNIQUE
ALTER TABLE dipendenti DROP CHECK stipendio_check; -- per CHECK

-- RIMUOVERE COLONNA
ALTER TABLE rapporto_clienti 
DROP COLUMN prova;

-- MODIFICARE DATI colonna
ALTER TABLE rapporto_clienti
MODIFY prova INT;

-- RINOMINARE COLONNA
ALTER table rapporto_clienti 
RENAME miao;