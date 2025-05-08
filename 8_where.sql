/* 08 WHERE
- sintassi
- condizioni
- operatori logici

*/

SELECT * / colonna1, colonnaN... FROM nome tabella WHERE condizioni;

SELECT * FROM clienti WHERE id_cliente != 1;

-- Oppure se voglio torvare delle info specifiche
SELECT denominazione, telefono 
FROM clienti 
WHERE id_cliente = 1;


SELECT * FROM dipendenti 
WHERE stipendio > 1400;
SELECT * FROM dipendenti 
WHERE stipendio < 2000;
SELECT * FROM dipendenti 
WHERE stipendio >= 1500;


/*
# ==========================
# Operatori in SQL - Riepilogo
# ==========================

# Operatori logici:
# AND     -> restituisce TRUE se entrambe le condizioni sono vere
# OR      -> restituisce TRUE se almeno una delle condizioni è vera
# NOT     -> inverte il valore logico (TRUE diventa FALSE e viceversa)

# Esempio:
# SELECT * FROM tabella WHERE col1 = 10 AND col2 <> 5;

# Operatori aritmetici:
# +       -> addizione
# -       -> sottrazione
# *       -> moltiplicazione
# /       -> divisione
# %       -> modulo (resto della divisione)

# Esempio:
# SELECT col1 + col2 AS somma FROM tabella;

# Operatori di confronto:
# =       -> uguale
# <>      -> diverso (anche != in molti DBMS)
# >       -> maggiore
# <       -> minore
# >=      -> maggiore o uguale
# <=      -> minore o uguale
# BETWEEN ... AND ...   -> compreso tra due valori (inclusi)
# IN (...)              -> valore presente in un insieme
# NOT IN (...)          -> valore NON presente in un insieme
# IS NULL / IS NOT NULL -> verifica se un valore è nullo
# LIKE                  -> confronto con pattern (es. 'A%', '%Z', '_X%')

# Esempio:
# SELECT * FROM utenti WHERE nome LIKE 'A%' AND eta BETWEEN 18 AND 30;
*/