-- Exo 4
-- Requêtes avec jointure « many to one » et « one to many »

-- Exo 4.1
-- Listez tous les students avec leurs projects
-- Note : les students sans projets doivent aussi apparaître dans les résultats
SELECT *
FROM student 
LEFT JOIN project ON project.id = project_id; 

-- Exo 4.2
-- Listez le student dont l'id est `2` avec son project
SELECT *
FROM student
INNER JOIN project
WHERE id = 2 AND project.id = project_id;

-- Exo 4.3
-- Listez tous les projects avec leurs students
-- Note : les projets sans students ne doivent pas apparaître dans les résultats
SELECT *
FROM project
INNER JOIN student
WHERE project.id = project_id;

-- Exo 4.4
-- Listez le project dont l'id est `3` avec ses students
SELECT *
FROM student
INNER JOIN project
WHERE project_id = 3 AND project.id = project_id;
