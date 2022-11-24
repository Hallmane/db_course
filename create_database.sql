-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler version: 1.0.0-alpha1
-- PostgreSQL version: 15.0
-- Project Site: pgmodeler.io
-- Model Author: ---

-- Database creation must be performed outside a multi lined SQL file. 
-- These commands were put in this file only as a convenience.
-- 
-- object: new_database | type: DATABASE --
-- DROP DATABASE IF EXISTS new_database;
CREATE DATABASE new_database;
-- ddl-end --


-- object: public.person | type: TABLE --
CREATE TABLE public.person (
	personal_id_number char(12) NOT NULL,
	email varchar(64) NOT NULL,
	first_name varchar(128) NOT NULL,
	surname varchar(128) NOT NULL,
	address_id serial NOT NULL,
	phone_number varchar(32),
	CONSTRAINT person_pk PRIMARY KEY (personal_id_number),
	CONSTRAINT personal_id_number UNIQUE (personal_id_number),
	CONSTRAINT email UNIQUE (email)
);
-- ddl-end --
ALTER TABLE public.person OWNER TO postgres;
-- ddl-end --

-- object: public.address | type: TABLE --
CREATE TABLE public.address (
	address_id serial NOT NULL,
	city varchar(128) NOT NULL,
	street_name varchar(128) NOT NULL,
	zip_code varchar(12) NOT NULL,
	street_number varchar(32),
	lesson_id_lesson integer NOT NULL,
	CONSTRAINT address_pk PRIMARY KEY (address_id),
	CONSTRAINT address_id UNIQUE (address_id)
);
-- ddl-end --
ALTER TABLE public.address OWNER TO postgres;
-- ddl-end --

-- object: public.instrument | type: TABLE --
CREATE TABLE public.instrument (
	instrument_id serial NOT NULL,
	type varchar(128) NOT NULL,
	brand varchar(128) NOT NULL,
	price integer NOT NULL,
	available boolean NOT NULL,
	CONSTRAINT instrument_pk PRIMARY KEY (instrument_id),
	CONSTRAINT instrument_id UNIQUE (instrument_id)
);
-- ddl-end --
ALTER TABLE public.instrument OWNER TO postgres;
-- ddl-end --

-- object: public.instructor | type: TABLE --
CREATE TABLE public.instructor (
	instructor_id serial NOT NULL,
	personal_id_number char(12) NOT NULL,
	skill_level smallint NOT NULL,
	CONSTRAINT instructor_pk PRIMARY KEY (instructor_id),
	CONSTRAINT instructor_id UNIQUE (instructor_id)
);
-- ddl-end --
ALTER TABLE public.instructor OWNER TO postgres;
-- ddl-end --

-- object: public.student | type: TABLE --
CREATE TABLE public.student (
	student_id serial NOT NULL,
	personal_id_number char(12) NOT NULL,
	contact_person char(12),
	CONSTRAINT student_pk PRIMARY KEY (student_id),
	CONSTRAINT student_id UNIQUE (student_id)
);
-- ddl-end --
ALTER TABLE public.student OWNER TO postgres;
-- ddl-end --

-- object: public.lesson | type: TABLE --
CREATE TABLE public.lesson (
	lesson_id serial NOT NULL,
	instructor_id serial NOT NULL,
	"time" timestamp NOT NULL,
	skill_level smallint NOT NULL,
	lesson_type integer NOT NULL,
	lesson_address serial NOT NULL,
	instructor_id_instructor integer NOT NULL,
	classroom varchar(64) NOT NULL,
	CONSTRAINT lesson_pk PRIMARY KEY (lesson_id)
);
-- ddl-end --
ALTER TABLE public.lesson OWNER TO postgres;
-- ddl-end --

-- object: public.student_lesson | type: TABLE --
CREATE TABLE public.student_lesson (
	student_id serial NOT NULL,
	lesson_id serial NOT NULL,
	instrument_type varchar(128),
	student_id_student integer NOT NULL,
	lesson_id_lesson integer NOT NULL

);
-- ddl-end --
ALTER TABLE public.student_lesson OWNER TO postgres;
-- ddl-end --

-- object: public.rental | type: TABLE --
CREATE TABLE public.rental (
	rental_id serial NOT NULL,
	student_id serial NOT NULL,
	instrument_id serial NOT NULL,
	rental_start timestamp NOT NULL,
	rental_end timestamp NOT NULL,
	student_id_student integer NOT NULL,
	CONSTRAINT rental_pk PRIMARY KEY (rental_id),
	CONSTRAINT rental_id UNIQUE (rental_id)
);
-- ddl-end --
ALTER TABLE public.rental OWNER TO postgres;
-- ddl-end --

-- object: public.sibling | type: TABLE --
CREATE TABLE public.sibling (
	student_id serial NOT NULL,
	personal_id_number char(12) NOT NULL

);
-- ddl-end --
ALTER TABLE public.sibling OWNER TO postgres;
-- ddl-end --

-- object: public.ensemble | type: TABLE --
CREATE TABLE public.ensemble (
	price integer NOT NULL,
	schedule timestamp,
	available_spots integer NOT NULL,
	genre varchar(128) NOT NULL
-- 	lesson_id integer NOT NULL,
-- 	instructor_id integer NOT NULL,
-- 	"time" timestamp NOT NULL,
-- 	skill_level smallint NOT NULL,
-- 	lesson_type integer NOT NULL,
-- 	lesson_address integer NOT NULL,
-- 	classroom varchar(64) NOT NULL,
-- 	instructor_id_instructor integer NOT NULL,

)
 INHERITS(public.lesson);
-- ddl-end --
ALTER TABLE public.ensemble OWNER TO postgres;
-- ddl-end --

-- object: public.group_lesson | type: TABLE --
CREATE TABLE public.group_lesson (
	price integer NOT NULL,
	schedule timestamp NOT NULL,
	available_spots integer NOT NULL
-- 	lesson_id integer NOT NULL,
-- 	instructor_id integer NOT NULL,
-- 	"time" timestamp NOT NULL,
-- 	skill_level smallint NOT NULL,
-- 	lesson_type integer NOT NULL,
-- 	lesson_address integer NOT NULL,
-- 	classroom varchar(64) NOT NULL,
-- 	instructor_id_instructor integer NOT NULL,

)
 INHERITS(public.lesson);
-- ddl-end --
ALTER TABLE public.group_lesson OWNER TO postgres;
-- ddl-end --

-- object: public.individual_lesson | type: TABLE --
CREATE TABLE public.individual_lesson (
	price integer NOT NULL
-- 	lesson_id integer NOT NULL,
-- 	instructor_id integer NOT NULL,
-- 	"time" timestamp NOT NULL,
-- 	skill_level smallint NOT NULL,
-- 	lesson_type integer NOT NULL,
-- 	lesson_address integer NOT NULL,
-- 	classroom varchar(64) NOT NULL,
-- 	instructor_id_instructor integer NOT NULL,

)
 INHERITS(public.lesson);
-- ddl-end --
ALTER TABLE public.individual_lesson OWNER TO postgres;
-- ddl-end --

-- object: lesson_fk | type: CONSTRAINT --
ALTER TABLE public.address ADD CONSTRAINT lesson_fk FOREIGN KEY (lesson_id_lesson)
REFERENCES public.lesson (lesson_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: address_uq | type: CONSTRAINT --
ALTER TABLE public.address ADD CONSTRAINT address_uq UNIQUE (lesson_id_lesson);
-- ddl-end --

-- object: instructor_fk | type: CONSTRAINT --
ALTER TABLE public.lesson ADD CONSTRAINT instructor_fk FOREIGN KEY (instructor_id_instructor)
REFERENCES public.instructor (instructor_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: lesson_uq | type: CONSTRAINT --
ALTER TABLE public.lesson ADD CONSTRAINT lesson_uq UNIQUE (instructor_id_instructor);
-- ddl-end --

-- object: student_fk | type: CONSTRAINT --
ALTER TABLE public.rental ADD CONSTRAINT student_fk FOREIGN KEY (student_id_student)
REFERENCES public.student (student_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: student_fk | type: CONSTRAINT --
ALTER TABLE public.student_lesson ADD CONSTRAINT student_fk FOREIGN KEY (student_id_student)
REFERENCES public.student (student_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: lesson_fk | type: CONSTRAINT --
ALTER TABLE public.student_lesson ADD CONSTRAINT lesson_fk FOREIGN KEY (lesson_id_lesson)
REFERENCES public.lesson (lesson_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: address | type: CONSTRAINT --
ALTER TABLE public.person ADD CONSTRAINT address FOREIGN KEY (address_id)
REFERENCES public.address (address_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: personal_id_number | type: CONSTRAINT --
ALTER TABLE public.instructor ADD CONSTRAINT personal_id_number FOREIGN KEY (personal_id_number)
REFERENCES public.person (personal_id_number) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: personal_id_number | type: CONSTRAINT --
ALTER TABLE public.student ADD CONSTRAINT personal_id_number FOREIGN KEY (personal_id_number)
REFERENCES public.person (personal_id_number) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: instrument | type: CONSTRAINT --
ALTER TABLE public.student_lesson ADD CONSTRAINT instrument FOREIGN KEY (instrument_type)
REFERENCES public.instrument (type) MATCH SIMPLE
ON DELETE CASCADE ON UPDATE NO ACTION;
-- ddl-end --

-- object: instrument_id | type: CONSTRAINT --
ALTER TABLE public.rental ADD CONSTRAINT instrument_id FOREIGN KEY (instrument_id)
REFERENCES public.instrument (instrument_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: student_sibling | type: CONSTRAINT --
ALTER TABLE public.sibling ADD CONSTRAINT student_sibling FOREIGN KEY (student_id)
REFERENCES public.student (student_id) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: person_sibling | type: CONSTRAINT --
ALTER TABLE public.sibling ADD CONSTRAINT person_sibling FOREIGN KEY (personal_id_number)
REFERENCES public.person (personal_id_number) MATCH SIMPLE
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --


