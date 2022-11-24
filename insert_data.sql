INSERT INTO `public.person` (`personal_id_number`,`email`,`name`,`address`,`phone`)
VALUES
  (200108011337,"consectetuer.ipsum@hotmail.net","Palmer Lynn","P.O. Box 118, 1825 Mauris Rd.","1-336-456-5947"),
  (199903011333,"lorem.ac@google.ca","Jaden Hines","7087 Elit, Rd.","1-298-676-2791"),
  (194411031339,"quam.elementum.at@hotmail.couk","Carson Rogers","Ap #943-431 Magna Ave","1-487-363-7248"),
  (201101300331,"in@aol.ca","Kane Mcknight","P.O. Box 862, 1900 Laoreet Av.","1-602-743-8148"),
  (197904121332,"fermentum.arcu@aol.couk","Fitzgerald Mitchell","Ap #573-252 Lobortis Avenue","1-247-545-8014");


INSERT INTO `public.address` (`address_id`,`city`,`street_name`,`zip_code`,`street_number`,`lesson_id_lesson`)
VALUES
  (03850636212343070187329,"Lidköping","375-7424 Cursus St.","243675",9,2),
  (12631233869735595332233,"Nova Kakhovka","Ap #142-9873 Tincidunt St.","A5N 2G5",8,4),
  (83234838737348342053051,"Kovel","185-1302 Penatibus Rd.","563144",11,9),
  (34873435235742487122505,"Spijkenisse","P.O. Box 859, 724 At Street","51625",7,9),
  (04831312621343314504914,"Oleksandriia","Ap #293-7140 Fermentum St.","22-435",11,6);


  INSERT INTO `public.instrument` (`instrument_id`,`type`,`brand`,`price`,`available`)
VALUES
  (10844133665164142868865,"Aenean euismod mauris eu elit.","ipsum ac",777,"No"),
  (64616178474543128391214,"pede, nonummy ut, molestie in,","dis parturient",807,"No"),
  (58719884577956576295723,"purus sapien, gravida non, sollicitudin","sem ut cursus",346,"Yes"),
  (93622215553395254832316,"ac nulla. In tincidunt congue","id, mollis",491,"Yes"),
  (26210155192601529635536,"nunc sed pede. Cum sociis","non massa",693,"No");


INSERT INTO `public.instructor` (`instructor_id`,`personal_id_number`,`skill_level`)
VALUES
  (02579632147803773425458,194294593872,9),
  (67893342297651567584772,199252400158,9),
  (52123935132907772528061,197670368262,9),
  (22714884411625130448185,196518453409,3),
  (28152795691922726602465,201215924620,10);


INSERT INTO `public.student` (`student_id`,`personal_id_number`,`contact_person`)
VALUES
  (02579632147803773422458,192691494874,192189633418),
  (67893342299651567584772,199937815417,199780236687),
  (52123935130907772528061,195828663343,199585767138),
  (92714884411625130448185,199478882023,195357074806),
  (38152795691922726602465,191287433472,194504046369);


INSERT INTO `public.lesson` (`lesson_id`,`instructor_id`,`time`,`skill_level`,`lesson_type`,`lesson_address`,`instructor_id_instructor`,`classroom`)
VALUES
  (97103775115955219881077,192691494874,"2022-12-26 04:01:39",8,34,83388342576750607344826,42635189214163178233887,"id, ante. Nunc"),
  (35844652068865212576774,199937815417,"2023-03-05 13:30:48",6,4,02825523339382701193950,65719052174514632127225,"purus ac tellus. sed Fusce"),
  (16138082410508113254616,195828663343,"2023-06-26 00:25:40",4,41,77344326639759695706797,07315512756160439638033,"luctus,"),
  (79359113246569759764321,199478882023,"2022-01-02 07:13:02",2,44,58843106880231574395464,24111871516265381289091,"In ornare sagittis felis. Donec"),
  (85819487170194586887012,191287433472,"2023-03-18 20:03:29",9,21,43965436701285953276210,46142606431928810381763,"pharetra nibh.");



INSERT INTO `public.student_lesson` (`student_id`,`lesson_id`,`instrument_type`,`student_id_student`,`lesson_id_lesson`)
VALUES
  (10844133665164142868865,85638260266583126812415,"Aenean euismod mauris eu elit.",53287684623574531328327,45585642266362120621975),
  (64616178474543128391214,01488946563800447503198,"pede, nonummy ut, molestie in,",72115448641117276718507,48348120681023211232142),
  (58719884577956576295723,62389748572543943113843,"purus sapien, gravida non, sollicitudin",72783861856639313373256,76048261334349263947957),
  (93622215553395254832316,33116666644570483677163,"ac nulla. In tincidunt congue",21536828355639362928524,18323985811733014878414),
  (26210155192601529635536,19122257880715812912348,"nunc sed pede. Cum sociis",14585185715176422258330,06334431315137001866262);

  INSERT INTO `public.rental` (`rental_id`,`student_id`,`instrument_id`,`rental_start`,`rental_end`,`student_id_student`)
VALUES
  (10844133665164142868865,85638260266583126812415,45585642266362120621975,2021-03-12 21:07:20,2023-05-30 13:34:48,25256414115734348660666),
  (64616178474543128391214,01488946563800447503198,48348120681023211232142,2021-11-03 23:38:56,2021-12-21 23:36:17,94125641166830169079211),
  (58719884577956576295723,62389748572543943113843,76048261334349263947957,2021-09-22 10:13:27,2023-09-18 15:55:05,28132749839431688596025),
  (93622215553395254832316,33116666644570483677163,18323985811733014878414,2021-06-15 01:47:00,2022-01-04 23:33:50,44226813024404348723815),
  (26210155192601529635536,19122257880715812912348,06334431315137001866262,2021-08-22 12:41:58,2023-07-18 11:08:20,72349287018668884188243);


  INSERT INTO `public.sibling` (`student_id`,`personal_id_number`)
VALUES
  (10844133665164142868865,200609268195),
  (64616178474543128391214,196262557056),
  (58719884577956576295723,190468944874),
  (93622215553395254832316,195871082460),
  (26210155192601529635536,195389939597);

  INSERT INTO `public.ensemble` (`price`,`schedule`,`available_spots`,`genre`)
VALUES
  (267,"2022-07-30 09:12:07",31,"lobortis, nisi"),
  (157,"2023-11-15 18:44:36",49,"dapibus"),
  (069,"2023-07-22 00:49:56",161,"placerat, augue."),
  (391,"2022-07-02 01:25:20",121,"libero lacus,"),
  (076,"2021-11-28 07:52:59",65,"congue turpis.");


INSERT INTO `public.group_lesson` (`price`,`schedule`,`available_spots`)
VALUES
  (237,"2022-09-01 08:01:49",139),
  (400,"2023-10-02 13:30:04",244),
  (176,"2022-11-04 09:15:36",21),
  (360,"2023-03-22 22:52:31",102),
  (356,"2022-05-30 05:36:45",209);


INSERT INTO `public.indivual_lesson` (`price`)
VALUES
  (171),
  (033),
  (159),
  (148),
  (192);




