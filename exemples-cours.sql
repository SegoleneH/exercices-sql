-- lien pour accéder à phpMyAdmin : http://localhost/pma-subdir/

-- % = *

-- Caractère d'échappement pour les ' : doubler ' 
    -- exemple :`La promo de l''année 2023`

--*___________________________________________LIKE_____________________________________________________________________________________________________________

-- L’opérateur LIKE est utilisé dans la clause WHERE des requêtes SQL. 
    --Ce mot-clé permet d’effectuer une recherche sur un modèle particulier. 
    
--^     Syntaxe =  WHERE colonne LIKE modele

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

-- requête pour sélectionner tous ceux qui ont créé leur compte le 01 Avril

SELECT *
FROM `user`
WHERE created_at > '2023-04-01 00:00:00' AND < '2023-04-02 00:00:00';

    -- abonner ces users à la newsletter
    -- + changer password de users : ILLEGAL
    UPDATE `user`
    SET newsletter = TRUE , password = 'abc'
    WHERE created_at created_at >= '2023-04-01 00:00:00' AND < '2023-04-02 00:00:00';


-- soft delete ? 

-- hard delete user 3
DELETE *
FROM `user`
WHERE id = 3;


-- injecter users dans table de jointure + leur ajouter des projets
INSERT INTO `projet_user`(`projet_id`, `user_id`) 
VALUES 
(42, 1), --projet 42, utilisateur 1
(43, 1), --projet 43, utilisateur 1
(44, 1), --projet 44, utilisateur 1
(42, 2), --projet 42, utilisateur 2
(73, 2), --projet 73, utilisateur 2
(74, 2); --projet 74, utilisateur 2

--* Création de clé étrangère : https://vimeo.com/310982123

--* Création d'une table de jointure : https://vimeo.com/336705858

--* DOC JOINTURES : https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/

-- Réunit lignes selon leur groupe
SELECT utilisateur.*, groupe.name
FROM utilisateur
LEFT OUTER JOIN groupe ON groupe.id = utilisateur.groupe_id
ORDER BY utilisateur.id ASC;


SELECT *
FROM utilisateur
INNER JOIN projet_utilisateur ON projet_utilisateur.utilisateur_id = utilisateur.id;


projet.id AS projet_id 
-- ==> prend projet.id et lui donne l'alias projet_id (renomme colonne)