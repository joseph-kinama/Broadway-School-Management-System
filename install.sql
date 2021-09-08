

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO `admin` VALUES (1,'Mr. Admin','admin@admin.com','admin123','1','');



DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `prefect_id` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `class` VALUES (1,'Form 1','', ''),(2,'Form 2','', ''),(4,'Form 3','', ''),(5,'Form 4','', '');

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `father_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `role` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profileUrl` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `student` VALUES 
    (1011,'Lydia Adams','06/20/2014','female','','','3103 Modoc Alley','208-259-2964','LydiaAdams@gmail.com','','james jordan','mary jane','2','', '', ''),
    (1245,'Royce Miller','06/06/2018','male','','','FEDERAL COLLEGE OF EDUCATION, OSIELE ABEOKUTA OGUN STATE','08033527716','royce@gmail.com','','Simon Kella','Milly Kwamboka','3','', '',''),
    (899,'Ade Wellis','06/11/2014','male','','','14 Aladin Road','080-255-9586','luiswelt@gmail.com','','James Maina','lily Chepkurui','3','', '', ''),
    (912,'kemi','07/15/2015','male','','','1 Long Tubae','080-5454-4545','kemi2@kem2i.com','','Mike Kemi','Jane Kemi','4','', '', ''),
    (1058,'Francesca Thornton','06/10/2014','female','','','3009 Beech Street','925-752-8053','FrancescaThornton@gmail.com','','Thorton Master','Francesca Master','2','', '', ''),
    (1412,'segun','06/17/2014','female','','','12 Kware Way','08-054-5545','segun@segun.com','','De Segun','Mel Segan','3','', '', ''),
    (1511,'Danielle Glover','09/12/2017','male','','','1601 Pearlman Avenue','978-233-5452','DanielleGlover@gmail.com','','Daniel Glover','Mercy Glover','2','', '', ''),
    (889,'bryan bett','06/06/2018','male','christianity','','20108 Rongai','74-661-3059','kiplangatsgt@gmail.com','','Will Smith','Wale Smith','3','', '', '');



DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `subject` VALUES (1,'Mathematics'),(2,'Calculus'),(3,'Computer Science'),(4,'Humanity'),(5,'Neural Networks'), (6,'Robotics');


DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profileUrl` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `role` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `country` longtext COLLATE utf8_unicode_ci NOT NULL,
  `county` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subjects` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `teacher` VALUES 
(1,'Tom Connolly','06/03/1976','male','','', '','','694 Michael Street','713-732-6331','TomConnolly@teachers.com','','', '', '', ''),
(2,'Alfie Nolly','12/08/1985','female','','', '','','4841 Andell Road','614-901-1543','AlfieGibbs@gmail..com','','', '', '', '');

