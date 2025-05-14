/*
20 ALIAS

 - cosa sono: modo di chiamare una tabella durante la query per velocizzre le cose
 - Per tabelle
 - Per colonne


*/

SELECT dipendenti.id_dipendente, dipendenti.nome, dipendenti.data_assunzione, uffici.nome_ufficio
FROM dipendenti
INNER JOIN uffici ON dipendenti.id_ufficio = uffici.id_ufficio;

-- L'equivalente è scrivere così, risparmiando spazio e tempo!
SELECT X.id_dipendente, X.nome, X.data_assunzione, Y.nome_ufficio
FROM dipendenti AS X -- dopo aver scritto AS nome POSSIAMO sostiotuire dipendneti con X
INNER JOIN uffici AS Y 
ON X.id_ufficio = Y.id_ufficio;



-- ALIAS SULLA colonna
 SELECT nome, DATE_FORMAT(data_assunzione, '%e %M, Y%') FROM dipendenti AS data_assunzione; -- DTATE FORMAT PERMETTE DIFOMRATTARE LA DATA COME VOGLIAMO NOI
 -- Ub qyek caso il nome della tabella diventerebbe lungo e occuperebbe spazio, ma mettendo AS ilnome della colonna torna l'alias che scgliamo(utile anche per passare a json un qualcosa di leggibile)