CREATE VIEW instructor_pain AS
SELECT 
    i.instructor_id, COUNT(l.instructor_id) AS lesson_count
FROM instructor i
JOIN lesson l ON l.instructor_id = i.instructor_id
WHERE l.time >= CURRENT_DATE - INTERVAL '1 MONTH'
GROUP BY i.instructor_id
HAVING COUNT(l.instructor_id) > 0
ORDER BY lesson_count DESC;