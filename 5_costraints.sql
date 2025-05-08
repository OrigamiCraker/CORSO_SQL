-- I COSTRAINTS
-- Sono dei limitatori per i dati!
CREATE TABLE IF NOT EXISTS dipendenti(
id_dipendente INT NOT NULL AUTO_INCREMENT, -- NOT NULL: specifica che non può essere nullo in inserimento il campo. Utilizzabile in ogni campo
nome VARCHAR(100),
cognome VARCHAR(100) NOT NULL,
data_assunzione DATE,
stipendio DECIMAL(5, 2) NOT NULL CHECK (stipendio >= 1200 AND stipendio <= 5000), 
                                       -- CHECK: serve pe rcontrollare un campo in fase di modifica o di inserimento.
                                       -- Ipotizziamo nel nostro caso che lo stipendio sia compreso tra due valori.
  
telefono VARCHAR(10) NOT NULL UNIQUE, -- UNIQUE: a differenza di PRIMARY KEY è localmente tabella e può cambiare nel tempo
  																		 -- il numero di telefono deve essere univoco ma posso modificarlo, non è così essenziale
  
mansione varchar(255) NOT NULL DEFAULT 'impiegato', -- DEFAULT aggiunge un campo di default se non dichiarato.
  																									 -- sintassi DEFAULT 'campo_che_inserisco'.
  																									 -- NOT NULL mi avrebbe chiesto di inserire un valore se non lo specificavo!

PRIMARY KEY (id_dipendente), -- PRIMARY KEY: chiave primaria, significa che è un valore univoco che idetnifica una specifica riga. Posso specificarla dopo!
-- Ho sepcificato che id divernterà una chiave primaria! Il nome è id_dipendente per migliorare la lettura per i passaggi successivi (truncate e join ecc)
FOREIGN KEY (id_dipendente) REFERENCES rapporto_clienti(id_dipendente) -- "Chiave esterna": potremmo utilizzare il nostro id per dverse cose
-- Molte tabelle avranno quindi un dato comeune, inq uesto caso id_cliente. Ci permette di identificare una connessione con altri tabelle
);

-- Esempio per foreign key:

CREATE TABLE IF NOT EXISTS clienti(
id_cliente INT NOT NULL,
denominazione VARCHAR(255) NOT NULL,
p_iva VARCHAR(16) NOT NULL UNIQUE,
indirizzo VARCHAR(255) NOT NULL,
telefono VARCHAR(10) NOT NULL,
PRIMARY KEY (id_cliente),
FOREIGN KEY (id_cliente) REFERENCES rapporto_clienti(id_cliente)
);


CREATE TABLE IF NOT EXISTS rapporto_clienti(
id_rapporto INT NOT NULL AUTO_INCREMENT, -- Identifica la riga
id_cliente INT NOT NULL,
id_dipendente INT NOT NULL
);

--------------------------------------------------------------------------------------------------------

---- CORRETTA SECONDO SQL


-- Tabella CLIENTI
CREATE TABLE IF NOT EXISTS clienti (
  id_cliente INT NOT NULL AUTO_INCREMENT,
  denominazione VARCHAR(255) NOT NULL,
  p_iva VARCHAR(16) NOT NULL UNIQUE,
  indirizzo VARCHAR(255) NOT NULL,
  telefono VARCHAR(10) NOT NULL,
  PRIMARY KEY (id_cliente)
) ENGINE=InnoDB;

-- Tabella DIPENDENTI
CREATE TABLE IF NOT EXISTS dipendenti (
  id_dipendente INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100),
  cognome VARCHAR(100) NOT NULL,
  data_assunzione DATE,
  stipendio DECIMAL(7, 2) NOT NULL CHECK (stipendio >= 1200 AND stipendio <= 5000),
  telefono VARCHAR(10) NOT NULL UNIQUE,
  mansione VARCHAR(255) NOT NULL DEFAULT 'impiegato',
  PRIMARY KEY (id_dipendente)
) ENGINE=InnoDB;

-- Tabella RELAZIONE
CREATE TABLE IF NOT EXISTS rapporto_clienti (
  id_rapporto INT NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  id_dipendente INT NOT NULL,
  PRIMARY KEY (id_rapporto),
  FOREIGN KEY (id_cliente) REFERENCES clienti(id_cliente),
  FOREIGN KEY (id_dipendente) REFERENCES dipendenti(id_dipendente)
) ENGINE=InnoDB;

----------------------------------------------------------------------------

-- VARIANTE MIDALI

CREATE TABLE IF NOT EXISTS rapporto_clienti(
  id_rapporto INT NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  id_dipendente INT NOT NULL,
  PRIMARY KEY (id_rapporto)
);

CREATE TABLE IF NOT EXISTS dipendenti(
  id_dipendente INT UNSIGNED NOT NULL AUTO_INCREMENT REFERENCES rapporto_clienti(id_dipendente),
  nome VARCHAR(100),
  cognome VARCHAR(100) NOT NULL,
  data_assunzione DATE NOT NULL,
  stipendio DECIMAL(7, 2) NOT NULL CHECK (stipendio >= 1200 AND stipendio <= 5000), 
  telefono VARCHAR(10) NOT NULL UNIQUE,
  mansione VARCHAR(255) NOT NULL DEFAULT 'impiegato',
  PRIMARY KEY (id_dipendente)
);

CREATE TABLE IF NOT EXISTS clienti(
  id_cliente INT UNSIGNED NOT NULL AUTO_INCREMENT REFERENCES rapporto_clienti(id_cliente),
  denominazione VARCHAR(255) NOT NULL,
  p_iva VARCHAR(16) NOT NULL UNIQUE,
  indirizzo VARCHAR(255) NOT NULL,
  telefono VARCHAR(10) NOT NULL UNIQUE,
  PRIMARY KEY (id_cliente)
);



DROP TABLE rapport_clienti, dipendenti, clienti; -- Elimina tutte le tabelle divise da virgola!




