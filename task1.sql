-- Create a view that shows the number of lessons given per month in the specified year
CREATE VIEW lesson_count_per_month AS
SELECT
    EXTRACT(MONTH FROM "time") AS month,
    COUNT(*) AS total_lessons
FROM lesson
WHERE EXTRACT(YEAR FROM "time") = :year
GROUP BY month
ORDER BY month;

-- Create a view that shows the number of individual lessons per month in the specified year
CREATE VIEW individual_lesson_count_per_month AS
SELECT
    EXTRACT(MONTH FROM "time") AS month,
    COUNT(*) AS individual_lessons
FROM individual_lesson
WHERE EXTRACT(YEAR FROM "time") = :year
GROUP BY month
ORDER BY month;

-- Create a view that shows the number of group lessons per month in the specified year
CREATE VIEW group_lesson_count_per_month AS
SELECT
    EXTRACT(MONTH FROM "time") AS month,
    COUNT(*) AS group_lessons
FROM group_lesson
WHERE EXTRACT(YEAR FROM "time") = :year
GROUP BY month
ORDER BY month;

-- Create a view that shows the number of ensembles per month in the specified year
CREATE VIEW ensemble_count_per_month AS
SELECT
    EXTRACT(MONTH FROM "time") AS month,
    COUNT(*) AS ensembles
FROM ensemble
WHERE EXTRACT(YEAR FROM "time") = :year
GROUP BY month
ORDER BY month;
;
