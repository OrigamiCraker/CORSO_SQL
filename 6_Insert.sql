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
/*
l'algoritmo viene eseguito in loop per controllare se sono stati eseguiti dei cambiamenti sulla tabella per delle commesse urgenti giornaliere
in base un valore che imposterò dal database, ma dovrà essere eseguito settimanalmente per programmare di settimana in settimana 

- L'algoritmo scarica i dati da delle tabelle: tabella risorse e tabella commesse
- successivamente ordina tutte le commesse in ordine di data,d alla più vicina alla più lontana: sarà il nostro ordine priroritario
- Seguendo l'ordine della nuova tabella ordinata delle commesse controlla tra le risorse 
    - Chi è disponibile in quel settimana
    - Controlla chi è disponibile in quel giorno preciso e che non  sia impegnato in un altor lavoro
    - Controlla se l'operatore ha ore settimanali disponibili per le ore richieste per la commessa 
    - Controlla tra le varie scelte chi è più idoneo, ossia chi ha più ore all'attivo in base alla necessità della commessa controllando(ad esempio
      se l'operatore uno ha eseguito più ore di manutenzione e la commessa necessita di questo allora sceglie l'operatore)
- Crea/aggiorna una nuova tabella, tabella RIS_COMM, che conterrà l'id della commessa, la data di fine, id operatore e nome operatore
    -  nel processo imposta il valore is_working dell'operatore a false, rendendolo non disponibile, e dalla tabella risorse toglie la commessa

- nel frattempo rimane in ascolto sulla tabella RIS_COMM PER EVENTUALI CAMBIAMENTI: quando il lavoro viene concluso allora la tabella verrà cambiata in remoto. Al verificarsi
  di questa possibilità allora toglie la commessa definitivamente dalla tabella, riprsitina lo stato is_working in True e toglie le ore settimanali disponibili
- al reinserimento dell'operatore nel database riavvia il loop, cercando se è necessario inserirlo in un altro lavovro o no.

REGOLE:
- L'operatore deve essere riassegnato allo stesso lavoro il giorno successivo se non viene completato il giorno stesso
- l'operatore deve temrinare la giornata lavorativa nell'ultma sede assegnata
- ore disponibili settimanali e feriali da inserire nell'algoritmo

*/