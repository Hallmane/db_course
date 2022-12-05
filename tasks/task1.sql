-- Create a view that shows the number of lessons and their types per month in the specified year
CREATE VIEW lesson_type_count_per_month AS
SELECT
    EXTRACT(MONTH FROM l.time) AS month,
    COUNT(*) AS total_lessons,
    SUM(CASE WHEN i.lesson_id IS NOT NULL THEN 1 ELSE 0 END) AS individual_lessons,
    SUM(CASE WHEN g.lesson_id IS NOT NULL THEN 1 ELSE 0 END) AS group_lessons,
    SUM(CASE WHEN e.lesson_id IS NOT NULL THEN 1 ELSE 0 END) AS ensemble_lessons
FROM lesson l
LEFT JOIN individual_lesson i ON l.lesson_id = i.lesson_id
LEFT JOIN group_lesson g ON l.lesson_id = g.lesson_id
LEFT JOIN ensemble e ON l.lesson_id = e.lesson_id
WHERE EXTRACT(YEAR FROM l.time) = '2017'
GROUP BY month
ORDER BY month;


--CREATE VIEW lesson_count_per_month AS
--SELECT
--    EXTRACT(MONTH FROM time) AS month,
--    COUNT(*) AS total_lessons
--FROM lesson 
--WHERE EXTRACT(YEAR FROM time) = '2017' 
--GROUP BY month 
--ORDER BY month ASC;
----
--CREATE VIEW group_lesson_count_per_month(@year) AS
--SELECT
--    EXTRACT(MONTH FROM "time") AS month,
--    COUNT(*) AS group_lessons
--FROM group_lesson
--WHERE EXTRACT(YEAR FROM "time") = '2017'
--GROUP BY month
--ORDER BY month;
----
--CREATE VIEW ensemble_count_per_month(@year) AS
--SELECT
--    EXTRACT(MONTH FROM "time") AS month,
--    COUNT(*) AS ensembles
--FROM ensemble
--WHERE EXTRACT(YEAR FROM "time") = '2017'
--GROUP BY month
--ORDER BY month;
--
--
