/* LA SINTASSI è

CREATE TABLE nome_tabella(
    nome_campo tipo_campo costraint,
    nome_campo tipo_campo costraint,
    nome_campo tipo_campo costraint,
);
Dove possiamo isnerire tutti i campi che vgliamo

*/

CREATE TABLE prova(id int); -- Crea la tabella con una sola colonna (id) di tipo int


-- DROP TABLE nometabella permette di eliminare la tabella di cui specifichiamo il nome. Possiamo eliminare più tabelle insieme specificandone i vari nomi
-- divisi dalla vrigola. La query si rifletterà su ognuna di loro

DROP TABLE prova; -- Ad esempio eliminierà la tabella appena creata!

-- TIPI DI DATO DELLE TABELLE
-- ##########################################################
-- #           PRINCIPALI TIPI DI DATO IN MYSQL             #
-- ##########################################################

CREATE TABLE esempio_tipi_dato (

    -- Tipi numerici interi
    id INT AUTO_INCREMENT PRIMARY KEY,                                                          -- Intero (fino a ~2 miliardi)
    eta TINYINT,                                                                                -- Intero molto piccolo (-128 a 127)
    studenti SMALLINT,                                                                          -- Intero piccolo (-32.768 a 32.767)
    abitanti MEDIUMINT,                                                                         -- Intero medio (-8 milioni a 8 milioni)
    popolazione BIGINT,                                                                         -- Intero molto grande (fino a 9 quintilioni)

    -- Tipi numerici decimali
    prezzo DECIMAL(10, 2),                                                                      -- Numero con virgola fissa (es. 99999999.99)
    sconto FLOAT,                                                                               -- Numero con virgola mobile (meno preciso, ma più leggero)
    media DOUBLE,                                                                               -- Più preciso del FLOAT

    -- Tipi stringa
    nome VARCHAR(100),                                                                          -- Stringa variabile fino a 100 caratteri
    descrizione TEXT,                                                                           -- Testo lungo (fino a 64 KB)
    codice_fisso CHAR(10),                                                                      -- Stringa fissa di 10 caratteri

    -- Tipi data e ora
    data_nascita DATE,                                                                          -- Solo data (YYYY-MM-DD)
    orario TIME,                                                                                -- Solo orario (HH:MM:SS)
    data_registrazione DATETIME,                                                                -- Data e ora (YYYY-MM-DD HH:MM:SS)
    ultima_modifica TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,            -- Timestamp aggiornato automaticamente (riferimento al momento del richiamo)
                                                                                                --  conta il tempo passato dal 1970
    -- Tipi booleani
    attivo BOOLEAN                                                                              -- Valore vero/falso (0 o 1)

    -- Alcuni costraints
    non_vuoto NOT NULL                                                                          -- Specifica che il campo NON PUO' ESSERE NULLO
    unico UNIQUE                                                                                -- Specifica che il valore inserito è unico
);


-- CREAZIONE DELLA TABELLA PER IL DATABASE MIA_AZIENDA_DB PER CORSO
CREATE TABLE IF NOT EXISTS dipendenti(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100),
cognome VARCHAR (100),
data_assunzione DATE,
stipendio DECIMAL(5, 2)
);