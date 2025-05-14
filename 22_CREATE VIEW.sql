/*
22 CREATE VIEW

-cosa sono le view: o viste, sono una scorciatoia che possiamo fare su delle tabelle, delle sosospecie delle query salvate. 
    é uno statment sql salvato
-perché usarle
-esempio pratico
  creare view: CREATE VIEW nome_view AS ...
  chiamare view: SELECT * FROM nome_view;

-sostituire una view esistente
  CREATE OR REPLACE VIEW nome_view AS ...

-aggiornare dati attraverso view (saltiamo)
    Aggiornare dati attraverso una view in SQL è possibile ma con limiti, e può creare confusione se non si comprendono le regole.
    Sì, puoi farlo se:

        La view si basa su una sola tabella.

        Non usa DISTINCT, GROUP BY, UNION, JOIN, HAVING, aggregate functions, o LIMIT.

        Include tutte le colonne obbligatorie della tabella (es. quelle senza DEFAULT o NOT NULL senza valore).

    

❌ Non puoi aggiornare se la view è troppo complessa o astratta (con aggregazioni, join, ecc.).
-rimuovere view: DROP VIEW nome_view;

*/

CREATE VIEW prova AS
SELECT x.id_dipendente, x.nome, y.id_ufficio
FROM dipendenti AS x
LEFT JOIN uffici AS y
ON x.id_ufficio = y.id_ufficio;

-- Per chimarla usiamo SELECT * nomeview
-- CHE ESEGUE LA QUERY PRECEDENTMENETE CREATA!

-- SOSTITUIRE UNA VIEW ESISTENTE
 
CREATE OR REPLACE VIEW prova AS
SELECT *
FROM dipendenti;

-- AGGIORNARE DATI

-- 1. Creazione della tabella di esempio
CREATE TABLE dipendenti (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  stipendio DECIMAL(10, 2)
);

-- 2. Inserimento dati nella tabella
INSERT INTO dipendenti (id, nome, stipendio) VALUES
  (1, 'Luca', 2500),
  (2, 'Anna', 2700);

-- 3. Creazione di una view semplice (aggiornabile)
CREATE VIEW vista_stipendi AS
SELECT id, stipendio
FROM dipendenti;

-- 4. Aggiornamento dei dati tramite la view
-- Questo aggiornerà lo stipendio del dipendente con id = 1
UPDATE vista_stipendi
SET stipendio = 3000
WHERE id = 1;

-- 5. Creazione di una view con condizione e protezione (opzionale)
-- Impedisce di aggiornare/aggiungere valori che violano la clausola WHERE
CREATE VIEW vista_stipendi_sicura AS
SELECT id, stipendio
FROM dipendenti
WHERE stipendio < 5000
WITH CHECK OPTION;

-- 6. Questo aggiornamento sarà rifiutato se viola la condizione stipendio < 5000
-- Ad esempio, questo darà errore:
-- UPDATE vista_stipendi_sicura SET stipendio = 6000 WHERE id = 2;


-- RIMUOVERE LA VIEW
DROP VIEW prova;