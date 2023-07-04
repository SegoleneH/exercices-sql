SELECT *
FROM `user`
WHERE email LIKE '%gmail.com';
--> va matcher toutes les adresses mail qui se terminent par '%gmail.com' 
--> pas utilisé: on utilise serveur de recherche (elastic search(Java), solr(C), sphynx(Java) par ex)

-- tous les users dont l'email se termine par '@example.com'
SELECT *
FROM `user`
WHERE email LIKE '%@example.com';

-- tous les users dont l'email commence par 'a'
SELECT *
FROM `user`
WHERE email LIKE 'a%';

-- tous les users dont l'email contient '7'
SELECT *
FROM `user`
WHERE email LIKE '%7%';

-- affichez tous les users créés le 01/01/2023 et le 01/02/2023
SELECT *
FROM `user`
WHERE (created_at BETWEEN '2023-01-01' AND '2023-01-02')
OR (created_at BETWEEN  '2023-02-01' AND '2023-02-02');

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