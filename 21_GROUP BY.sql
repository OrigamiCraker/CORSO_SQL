/*
21 GROUP BY 

- serve a raggruppare righe che hanno lo stesso valore che noi scegliamo di un detemrinato campo, se è doppione unisci.



*/

SELECT x.nome_ufficio
FROM uffici AS x
LEFT JOIN dipendenti AS y
ON x.id_ufficio = y.id_ufficio;

-- Mi ritornerebbe diversi valori con diversi campi anche simili (ufficiì comuni ad altri dipendenti)

-- Noi vorremmo magari fare una tabella conrtenente il nome dell'ufficio con il numeor dei dipendenti corrispondente

SELECT x.nome_ufficio
FROM uffici AS x
LEFT JOIN dipendenti AS y
ON x.id_ufficio = y.id_ufficio
GROUp BY x.nome_ufficio;

-- NEXT STEP: 
SELECT x.nome_ufficio, COUNT(y.id_dipendente) AS totale_dipendenti-- contiamo quanti id_dipendenti ci sono sotto un group by per ogni ufficio. Count funziona anche dopo group by
/*
COUNT() ha bisogno di sapere da dove contare, quindi viene eseguito solo dopo che i dati sono stati filtrati, uniti e raggruppati.
Finché questi passaggi non sono completati, COUNT() non può essere applicato.
COUNT() non può funzionare su dati che non esistono ancora logicamente, cioè:

    - prima della FROM (cioè dei dati sorgente)
    - prima di una JOIN (se ci sono più tabelle)
    - prima del WHERE (se filtri righe)
    - e soprattutto prima del GROUP BY (se vuoi contare per gruppo)
    - Solo dopo questi passaggi, SQL ha a disposizione i "gruppi" su cui può eseguire il conteggio.

*/
FROM uffici AS x
LEFT JOIN dipendenti AS y
ON x.id_ufficio = y.id_ufficio
GROUP BY x.nome_ufficio;

/*
La query ha fatto:
- Viene costruita una tabella temporanea che combina ogni riga di uffici con le righe corrispondenti in dipendenti tramite x.id_ufficio = y.id_ufficio
- Con LEFT JOIN, anche gli uffici senza dipendenti saranno inclusi (con y.id_dipendente = NULL)
- I dati uniti vengono raggruppati per nome_ufficio. Ogni gruppo contiene tutte le righe (anche con NULL nei campi dei dipendenti) per un dato ufficio.
- Ha raggruppato togliendo i doppioni
- Ma inizialmente abbiamo detto di contare quantità di id_dipendente presenti per ogni id_ufficio
- Per ogni gruppo (cioè ogni nome_ufficio), viene calcolato il numero di righe in cui y.id_dipendente non è NULL.
    Questo è importante: COUNT(colonna) non conta i NULL, quindi se un ufficio non ha dipendenti, COUNT(y.id_dipendente) restituirà 0.
- Ora viene scelto cosa restituire come risultato finale: per ogni gruppo, il nome dell'ufficio e il numero di dipendenti.
*/

-- HAVING: sorta di where basato sull'aggregato di righe, funziona bene su gruop by che è un agglomerato di righe
SELECT x.nome_ufficio, COUNT(y.id_dipendente) AS totale_dipendenti
FROM uffici AS x
LEFT JOIN dipendenti AS y
ON x.id_ufficio = y.id_ufficio
GROUP BY x.nome_ufficio
HAVING totale_dipendenti = 2; -- Ritorna solo gli aggegati di group by dove il risultato richiesto è uguale a 2

