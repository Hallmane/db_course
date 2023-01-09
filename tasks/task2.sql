CREATE VIEW num_students_by_num_siblings AS
    SELECT 0 as num_siblings, COUNT(*) as num_students
    FROM student
        LEFT JOIN sibling ON student.student_id = sibling.student_id
            WHERE sibling.sibling_student_id IS NULL
        UNION
            SELECT 1 as num_siblings, COUNT(*) as num_students
                FROM student s1
                    INNER JOIN sibling s2 ON s1.student_id = s2.student_id
                GROUP BY s1.student_id
                    HAVING COUNT(DISTINCT s2.sibling_student_id) = 1
        UNION
            SELECT 2 as num_siblings, COUNT(*) as num_students
                FROM student s1
                    INNER JOIN sibling s2 ON s1.student_id = s2.student_id
                GROUP BY s1.student_id
                    HAVING COUNT(DISTINCT s2.sibling_student_id) = 2;

--To see the results of this query, run: 
--SELECT * FROM num_students_by_num_siblings;

--EXPLAIN ANALYZE SELECT * FROM num_students_by_num_siblings;
