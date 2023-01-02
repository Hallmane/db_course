-- task 1
--EXPLAIN ANALYZE SELECT * FROM lesson_type_count_per_month;
EXPLAIN ANALYZE SELECT * FROM lesson_type_count_per_month WHERE EXTRACT(YEAR FROM l.time) = '2017';

-- task 2
EXPLAIN ANALYZE SELECT * FROM select_zero_sibling;
EXPLAIN ANALYZE SELECT * FROM select_one_sibling;
EXPLAIN ANALYZE SELECT * FROM select_two_siblings;

-- task 3
EXPLAIN ANALYZE SELECT * FROM instructor_pain;

-- task 4
EXPLAIN ANALYZE SELECT * FROM next_week_ensembles;
