-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia --
SELECT *
FROM students
JOIN degrees
ON students.degree_id = degrees.id
AND degrees.name LIKE '%Economia';