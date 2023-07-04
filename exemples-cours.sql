-- % = *

-- Caractère d'échappement pour les ' : doubler ' 
    -- exemple :`La promo de l''année 2023`

--*___________________________________________LIKE_____________________________________________________________________________________________________________

-- L’opérateur LIKE est utilisé dans la clause WHERE des requêtes SQL. 
    --Ce mot-clé permet d’effectuer une recherche sur un modèle particulier. 
    
--^SYNTAXE =  WHERE colonne LIKE modele

--LIKE ‘%a’ : permet de rechercher toutes les chaines de caractère qui se termine par un “a”.

--LIKE ‘a%’ : permet de rechercher toutes les lignes de “colonne” qui commence par un “a”.

--LIKE ‘%a%’ : rechercher tous les enregistrement qui utilisent le caractère “a”.

--LIKE ‘pa%on’ : ce modèle permet de rechercher les chaines qui commence par “pa” et qui se terminent par “on”, comme “pantalon” ou “pardon”.



--*________________________________________EXEMPLES______________________________________________________________________________________________________________

-- tous les users dont l'email se termine par '@example.com'
SELECT *
FROM `user`
WHERE email LIKE '%@example.com';

-- affichez tous les users créés le 01/01/2023 et le 01/02/2023
SELECT *
FROM `user`
WHERE (created_at BETWEEN '2023-01-01' AND '2023-01-02')
OR (created_at BETWEEN  '2023-02-01' AND '2023-02-02');

-- affichez tous les users créés le 19/02/2023 
    -- donc entre le 19/02/2023 à 00:00h et le 20/02/2023 à 00:00h
SELECT *
FROM `user`
WHERE created_at >= '2023-02-19 00:00:00' AND created_at < '2023-02-20 00:00:00';

--IS NULL / IS NOT NULL
SELECT *
FROM `user`
WHERE updated_at IS NULL
AND deleted_at IS NULL;

SELECT *
FROM `user`
WHERE deleted_at IS NOT NULL;

