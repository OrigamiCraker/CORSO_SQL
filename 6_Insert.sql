/* 06 INSERT
 - sintassi
 - inserire la prima riga
 - senza campi
 - auto_increment
 - inserimeti multipli
*/

-- SINTASSI
-- INSERT INTO clienti (colonna1, colonna2, colonna3...) --- INSERISCI DENTRO nome (campi)
-- VALUES (val1, val2, val3...); --- VALORI DA INSERIRE (non obbligatori)

INSERT INTO clienti (id_cliente, denominazione, p_iva, indirizzo, telefono) -- l'ordine è importante
VALUES (0, "Xyz Impienti", "IT123456789", "Via Roma, Cesena", "0434567890"); -- L'ordinamento dell'inserimento dei dati si basa sull'ordine delle colonne richieste

-- Ora non potrmo reinserire il numeor 0 come primary key, inoltre p_iva è anche unique, quindi non pò essere riutilizzato in un'altra riga

INSERT INTO clienti (id_cliente, denominazione, p_iva, indirizzo, telefono)
VALUES (1, "Abc Servizi Casa", "IT12345000", "Via Cesena, Roma", "0434 552533");

-- Utoincrement: abbiamo fino ad ora utilizzato l'inserimento a mano nella nostra primary key!
-- Cos'è l'AUTO_INCREMENT?Incrementa manualmente un valore mano a mano che inserisco

INSERT INTO clienti (denominazione, p_iva, indirizzo, telefono) -- posso ora togliere l'id cliente, siccome essendo autoincrement nella tabella aumenterà da solo
VALUES ("Xyz Impienti", "IT123456789", "Via Roma, Cesena", "0434567890");


-- Inserimenti multipli
-- Possiamo inserire diversi dati uno dopo l'altro con la seguente dicituram dove ogni () determina una nuova riga
INSERT INTO clienti (denominazione, p_iva, indirizzo, telefono) 
VALUES 
("Giardinaggio aggio","IT8584631207", "Via Interna, Udine", "04341357896"),
("Piva Commercialista", "IT122258768", "Viale Libertà, Treviso", "0438648249"),
("Case & Case", "IT098765432", "Viale Venezia, Pordenone", "04386548513"),
("Ristorante buono", "IT392024893", "Via Cagliari, Milano", "0465246851");