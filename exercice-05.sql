-- Exo 5
-- Requêtes avec jointure « many to many »

-- Exo 5.1
-- Listez tous les students avec leurs tags
SELECT student.firstname, student.lastname, tag.name
FROM student 
JOIN student_tag ON student_id = student.id 
JOIN tag ON tag.id = tag_id; 

-- Exo 5.2
-- Listez tous les tags avec leurs students
SELECT tag.name, student.firstname, student.lastname 
FROM tag 
JOIN student_tag ON tag.id = tag_id 
JOIN student ON student_id = student.id; 

-- Exo 5.3
-- Listez le student dont l'id est `2` avec ses tags
SELECT student.firstname, student.lastname, tag.name
FROM student 
INNER JOIN tag ON student.id = 2
INNER JOIN student_tag ON tag.id = tag_id;

-- Exo 5.4
-- Listez le tag dont l'id est `2` avec ses students
SELECT tag.id, tag.name, student.firstname, student.lastname
FROM tag 
INNER JOIN student ON tag.id = 2;

-- ou

SELECT tag.id, tag.name, student.firstname, student.lastname 
FROM tag 
INNER JOIN student WHERE tag.id = 2; 