-- Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia --
/*SELECT *
FROM students
JOIN degrees
ON students.degree_id = degrees.id
AND degrees.name LIKE '%Economia';*/
-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze --
/*SELECT courses.name AS course_name, departments.name AS department_name
FROM courses
JOIN departments
ON courses.degree_id = departments.id
WHERE departments.name = 'Dipartimento di Neuroscienze'*/
-- Selezionare tutti i corsi in cui insegna Fulvio Amato --
/*SELECT courses.name, teachers.name, teachers.surname
FROM courses
JOIN course_teacher
ON courses.id = course_teacher.course_id
JOIN teachers
ON course_teacher.teacher_id = teachers.id
WHERE teachers.name = 'Fulvio' AND teachers.surname = 'Amato'*/
-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome --
SELECT students.surname AS student_surname, students.name AS student_name, degrees.*, departments.name AS deparment_name
FROM students
JOIN degrees
ON students.degree_id  = degrees.id
JOIN departments
ON degrees.department_id = departments.id
ORDER BY students.surname ASC, students.name ASC;