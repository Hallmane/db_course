INSERT INTO public.address (address_id,city,street_name,zip_code,street_number)
VALUES
(6660, 'Nyköping', 'Hargsvägen', '61157', '2'),
(6661, 'Malmköping', 'Hästvägen', '71158', '28'),
(6662, 'Stockholm', 'Fiskgränd', '11123', '13'),
(6663, 'Stockholm', 'Smutsvägen', '12120', '32');

INSERT INTO public.person (personal_id_number,email,first_name, surname,address_id,phone_number)
VALUES
(199609315155, 'ape@donkey.com', 'Halopie', 'Marström', 6660, '0730001112'),
(200006115155, 'mamamia@weehoo.com', 'Mamoopa', 'Fluki', 6663, '0730001112'),
(199902114139, 'saru@saru.com', 'Steepo', 'Apson', 6661, '0702201132'),
(199104205553, 'cat@monka.com', 'Floski', 'Mamoobies', 6660, '0761003334'),
(199205101250, 'here@monka.com', 'Artur', 'Milkies', 6662, '0721009334'),
(194101031523, 'instrukter@school.com', 'Görby', 'Malsson', 6662, '0155-12345'),
(193205101250, 'instrukter2@school.com', 'Gössel', 'Bobsson', 6662, '0155-12345'),
(196203021115, 'kontaktus@contacter.com', 'Contactinus', 'Persson', 6661, '0155-221344');

INSERT INTO public.instrument (instrument_id,type,brand,price)
VALUES
(1101, 'Guitar', 'Alibaba Instruments', 500),
(1102, 'Flute', 'Wish Instruments', 300),
(1103, 'Piano', 'Ica Basic Instruments', 800);

INSERT INTO public.instructor (instructor_id,personal_id_number,skill_level)
VALUES
(2100, 194101031523, 2),
(2101, 193205101250, 0),
(2102, 199205101250, 0);

INSERT INTO public.student (student_id,personal_id_number,contact_person)
VALUES
(5000, 199609315155, 196203021115),
(5001, 199902114139, 196203021115),
(5002, 199104205553, 196203021115),
(5003, 199104205553, null);

INSERT INTO public.lesson (lesson_id,instructor_id,time,skill_level)
VALUES
(9000, 2100 ,TIMESTAMP'2017-01-29 13:30:00', 2),
(9001, 2101 ,TIMESTAMP'2017-01-30 13:30:00', 2),
(9002, 2102 ,TIMESTAMP'2017-01-31 13:30:00', 2);

INSERT INTO public.student_lesson (student_id,lesson_id)
VALUES
(5000, 9000),
(5001, 9000),
(5002, 9000),
(5000, 9001),
(5002, 9002);

INSERT INTO public.ensemble (lesson_id, instructor_id, time, skill_level, price,schedule,available_spots,genre)
VALUES
(9000, 2100, TIMESTAMP'2022-11-30 13:30:00', 2, 600, 'we go when we want to', 10, 'grunge'),
(9000, 2100, TIMESTAMP'2023-01-09 13:30:00', 2, 600, 'we go when we want to', 10, 'folk'),
(9000, 2100, TIMESTAMP'2023-01-11 13:30:00', 2, 600, 'we go when we want to', 10, 'country'),
(9000, 2100, TIMESTAMP'2023-01-13 13:30:00', 2, 600, 'we go when we want to', 2, 'country'),
(9000, 2100, TIMESTAMP'2023-01-13 13:30:00', 2, 600, 'we go when we want to', 0, 'bebop');

INSERT INTO public.group_lesson (lesson_id, instructor_id, time, skill_level, price,schedule,available_spots)
VALUES
(9001, 2101, TIMESTAMP'2017-01-30 13:30:00', 1, 800, 'about 3 fiddy a clock', 10);

INSERT INTO public.individual_lesson (lesson_id, instructor_id, time, skill_level, price)
VALUES
(9002, 2102, '2019-04-16 13:30:00', 0, 300);

INSERT INTO public.rental (rental_id,student_id,instrument_id,rental_start,rental_end)
VALUES
(8000, 5000, 1102, TIMESTAMP'2017-01-29 13:30:00', TIMESTAMP'2017-03-29 13:30:00');

INSERT INTO public.sibling (student_id,sibling_student_id)
VALUES
(5000, 5001),  
(5001, 5000),

(5000, 5002),
(5002, 5000);
