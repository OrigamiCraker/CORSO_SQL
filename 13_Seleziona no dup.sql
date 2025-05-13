/* 
13 SELECT DISTINCT
- perché usarlo: perché in una colonna ci sono multipli valori della quale alcuni sono ripetuti, ma a noiinteressano solo i singolio e magri contarli con count
- sintassi
- abbinamento al count

*/

SELECT città 
FROM clienti; -- Tornerebbe 2 città ripetute, ma noi operiamoin solo 5 non 6! Ecco perché possiamo usare distinct

SELECT DISTINCT città
FROM clienti; -- Conta tutto senza ripeterli!

-- COUNT serve per ocntare!

SELECT count(città) FROM clienti; -- Tornerebbe tutto il contenuto (5)

SELECT  count(DISTINCT città) FROM clienti; -- prima le distingue tornando il valore a 4!