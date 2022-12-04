CREATE TABLE lessons (
    lesson_id INTEGER PRIMARY KEY,
    instructor_id INTEGER,
    time TIMESTAMP,
    skill_level INTEGER,
    price INTEGER,
    student_id INTEGER
);

INSERT INTO historical_db.lessons (lesson_id, instructor_id, time, skill_level, price, student_id)
SELECT lesson_id, instructor_id, time, skill_level, price, student_id
FROM seminar3.lesson;

SELECT student_id, COUNT(*) as total_lessons
FROM historical_db.lessons
GROUP BY student_id;