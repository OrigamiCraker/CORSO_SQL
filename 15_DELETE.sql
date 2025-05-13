/*
15 DELETE

- sintassi
- cancellare un record
- errore
- cosa succede all'id
*/

DELETE FROM nome_tab
WHERE id_cliente = 5; -- Elimina la riga corrispondente all'id!!

DELETE FROM dipendenti
WHERE id_dipendente = 5;
-- Senza where eliminiamo tutto!

/* COSA SUCCEDE AL ID?
se uso delete per eliminare un record  dove è presente un primarykey/id autoincrement il database mantiene l'ultimo incrmento. Se ora inserisco una nuova riga partirà non dal numero
del record appena eliminato ma da quello successivo! AUTO_INCREMENT si salva in pancia il risultato e ricorda l'ultimo id inserito!
*/