-- Contare quanti iscritti ci sono stati ogni anno --
/*SELECT YEAR(enrolment_date) AS 'anno',
COUNT(*) AS 'numero_iscritti'
FROM students
GROUP BY YEAR(enrolment_date );*/
-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio --
/*SELECT office_address AS 'edificio',
COUNT(*) AS 'insegnanti'
FROM teachers
GROUP BY office_address;*/
-- Calcolare la media dei voti di ogni appello d'esame --
SELECT exam_id, AVG(vote) AS 'media_voti'
FROM exam_student
GROUP BY exam_id