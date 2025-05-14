/*
18 LIKE

- SPIEGAZIONE: possiamo definire un pattern/una condizione dove il campo è "uguale" ad un pattern che abbiamo (tipo sappiamo che finisce con ANG e finisce con tot caratteri ad esempio)
- SINTASSI  

SELECT colonne
FROM tabella
WHERE campo LIKE pattern;

- PATTERN
- COMINCIA CON 'C%'
    % indica che ha un numero indefinito di caratteri dopo il primo carattere C definito
- FINISCE CON '%C'
- CONIENTE '%C%'
- CARATTERI FISSI E COMNINCIA CON 'C_'
- CARATTERI FISSI E FINISCE CON '_C'
- CARATTERI FISSI E CONTIENE '_C_'
- CONTIENE STRINGA E FINISCE CON UNO '%C_'
- CONTIENE STRINGA ED INIZIA CON UNO '_C%'

*/

SELECT *
FROM clienti
WHERE denominazione LIKE 'D%'; -- prende tutti i dati che iniziano per D e continuano con

SELECT *
FROM clienti
WHERE denominazione LIKE '%a'; -- Non è case sensitive!

SELECT *
FROM clienti
WHERE denominazione LIKE '%SRL%'; -- Prende tutto quello che contiene SRL nel dato e ha prima o dopo un numeor non precisato di caratteri


-- _C_ l'uderscore indica un posto di un carattere
SELECT *
FROM clienti
WHERE denominazione LIKE 'A______%'; -- Ogni underscore segna un posto di un carattere precisato che manca e deve essere inserito

SELECT *
FROM clienti
WHERE denominazione LIKE '______L%'; -- Posos farlo l'opposto

SELECT *
FROM clienti
WHERE denominazione LIKE 'A_fa%'; -- è valido, un solo carattere non conosciamo e lo dichiariamo e facciamo si che trova proprio quel tipo di carattere mancante creandoun filtro


SELECT *
FROM clienti
WHERE denominazione LIKE '%__l'; -- Implica che cerchi un numero indefinito di carattei di inizio ma sai che finisce con tre lettere di cui la finale è la L

SELECT *
FROM clienti
WHERE denominazione LIKE '__fa____'; -- è sempre valido ma lo spazio vale come carattere e quindi occupa uno spazio, dobbiamop usare anche un _ per lo spazio