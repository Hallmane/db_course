CREATE VIEW select_zero_siblings AS
SELECT student.* 
FROM student 
LEFT JOIN sibling 
ON student.student_id = sibling.student_id 
WHERE sibling.sibling_student_id IS NULL;

CREATE VIEW select_one_sibling AS
SELECT s1.student_id 
FROM student s1 
INNER JOIN sibling s2 ON s1.student_id = s2.student_id 
GROUP BY s1.student_id 
HAVING COUNT(DISTINCT s2.sibling_student_id) = 1;

CREATE VIEW select_two_siblings AS
SELECT s1.student_id 
FROM student s1 
INNER JOIN sibling s2 ON s1.student_id = s2.student_id 
GROUP BY s1.student_id 
HAVING COUNT(DISTINCT s2.sibling_student_id) = 2;

--EXPLAIN ANALYZE

--EXPLAIN ANALYZE SELECT * FROM select_zero_siblings;
--EXPLAIN ANALYZE SELECT * FROM select_one_sibling;
--EXPLAIN ANALYZE SELECT * FROM select_two_siblings;
