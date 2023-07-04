SELECT *
FROM `user`
WHERE email LIKE '%gmail.com';
--> va matcher toutes les adresses mail qui se terminent par '%gmail.com' 
--> pas utilisé: on utilise serveur de recherche (elastic search(Java), solr(C), sphynx(Java) par ex)

-- tous les users dont l'email se termine par '@example.com'
SELECT *
FROM user
WHERE email LIKE '%@example.com';

-- tous les users dont l'email commence par 'a'
SELECT *
FROM user
WHERE email LIKE 'a%';

-- tous les users dont l'email contient '7'
SELECT *
FROM user
WHERE email LIKE '%7%';

-- affichez tous les users créés le 01/01/2023 et le 01/02/2023
SELECT *
FROM user
WHERE (created_at BETWEEN '2023-01-01' AND '2023-01-02')
OR (created_at BETWEEN  '2023-02-01' AND '2023-02-02');

SELECT *
FROM user
WHERE created_at >= '2023-02-19 00:00:00' AND created_at < '2023-02-20 00:00:00';

--IS NULL / IS NOT NULL
SELECT *
FROM utilisateur
WHERE updated_at IS NULL
AND deleted_at IS NULL;

SELECT *
FROM utilisateur
WHERE deleted_at IS NOT NULL;
--__________________________________EXERCICES__________________________________________________

-- Exo 1
-- Requêtes simples en lecture
-- Code 1.1
-- Voici la requête qui permet de lister tous les tags
SELECT *
FROM tag;

-- Exo 1.1
-- Écrivez la requête qui permet de lister tous les students
SELECT *
FROM `student`;

-- Exo 1.2
-- Écrivez la requête qui permet de lister tous les projects
SELECT *
FROM `project`;

-- Exo 1.3
-- Écrivez la requête qui permet de lister le student dont l'id est `2`
SELECT 1
FROM `student`;

-- Exo 1.4
-- Écrivez la requête qui permet de lister les students dont l'id n'est pas `2`
SELECT *
FROM `student`
WHERE id <> 2;

-- Exo 1.5
-- Écrivez la requête qui permet de lister le project dont l'id est `3`
SELECT *
FROM `project`
WHERE id = 3;

-- Exo 1.6
-- Écrivez la requête qui permet de lister les projects dont l'id n'est pas `3`
SELECT *
FROM `project`
WHERE id <> 3;

-- Exo 1.7
-- Écrivez la requête qui permet de lister les students dont l'email se termine par la chaîne de caractères `.com`
SELECT *
FROM `student`
WHERE email '%@%.com';

-- Exo 1.8
-- Écrivez la requête qui permet de lister les students dont la date de création est antérieure au 10 janvier 2021 inclus
SELECT *
FROM `student`
WHERE created_at <= '10-01-2021';

-- Exo 1.9
-- Écrivez la requête qui permet de lister les projects dont la description ne contient pas la chaîne de caractères `Dolores`
SELECT *
FROM `project`
WHERE 'dolores'

-- Exo 1.10
-- Écrivez la requête qui permet de lister les projects dont la date de création est postérieure au 1er juillet 2021 inclus
SELECT *
FROM `project`
WHERE created_at >= '01-07-2021';

-- Exo 1.11
-- Écrivez la requête qui permet de lister les students ayant un project
-- Note : les students sans project ont une colonne `project_id` qui est nulle
SELECT *
FROM `student`
where `project_id` IS NOT NULL;

-- Exo 1.12
-- Écrivez la requête qui permet de lister les students n'ayant pas de project
-- Note : les students sans project ont une colonne `project_id` qui est nulle

SELECT *
FROM `student`
where `project_id` IS NULL;