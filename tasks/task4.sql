CREATE VIEW next_week_ensembles AS
SELECT
    e.lesson_id,
    e.time,
    e.genre,
    e.available_spots,
    (CASE
        WHEN e.available_spots = 0 THEN 'full booked'
        WHEN e.available_spots <= 2 THEN '1-2 seats left'
        ELSE 'more than two seats left'
    END) AS seats_left
FROM ensemble e
WHERE e.time >= CURRENT_DATE + INTERVAL '1 week'
ORDER BY e.genre, e.time;