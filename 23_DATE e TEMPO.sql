/*
23 DATE E TEMPO

- introduzione
- tipi di dati relativi al tempo
    - DATE YYYY-MM-DD                                   dal 1000-01-01 to 9999-12-31
    - TIME HH:MM:SS or HH:MM:SS                         dal -838:59:59 to 838:59:59
    - DATETIME YYYY-MM-DD HH:MM:SS                      dal 1000-01-01 to 9999-12-31 23:59:59
    - TIMESTAMP YYYY-MM-DD HH:MM:SS MA                  dal 1970-01-0100:00:00 to 2037-12-31 23:59:59 (calcola il tempo dal 1970)
    - YEAR YYYY                                         dal 1901 al 2155 
    
    - now(): permette di inserirre ilmmento in cui stiamo inserendo il record in maniera precisa

- proprietà di aggiornamento automatico
    DEFAULT CURRENT_TIMESTAMP
    ON UPDATE CURRENT_TIMESTAMP

- estrarre solo certe parti della data
    YEAR(), MONTH(), DAYOFMONTH(), MONTHNAME(), DAYNAME(), HOUR(), MINUTE(), SECOND()  

- formatttazione date
 DATE_FORMAT(birth_date, '%M %e, %Y')

*/

CREATE TABLE IF NOT EXISTS prova (
 id INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(50) NOT NULL UNIQUE,
 data_nascita DATE NOT NULL,
 data_inserimento DATETIME DEFAULT CURRENT_TIMESTAMP,
 data_aggiornamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO prova (nome, data_nascita, data_inserimento)
VALUES ('Luca', '1995-06-06', NOW()); -- Può essere eseguito anche direttamente dalla tabella!
-- difatto DEFAULT CURRENT_TIMESTAMP nella tabella permette di inserire come default il TIMESTAMP corrente

data_aggiornamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
--invece permette di inserire il cambiamento della data se avviene un update 

SELECT nome, YEAR(data_nascita) 
FROM prova; -- possiamo quindi estrarre anche solo pezzi o variazioni della data!

-- FORMATTAZIONE DATE
-- ci permette di formattare in una determinata maniera la data per estrarla in determinati modi
SELECT nome; DATE_FORMAT(data_nascita, '%e %M, %Y' ) AS data_nascita FROM prova;