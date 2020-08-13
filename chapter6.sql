USE gregs_list;
CREATE TABLE `movie_table` (
  `movie_id` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `category` varchar(10) NOT NULL,
  `purchased` date NOT NULL,
  PRIMARY KEY  (`movie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

INSERT INTO `movie_table` (`movie_id`,`title`,`rating`, `category`,`purchased`) VALUES ('83','Big Advenure','G','family','2002-03-06');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('89','Shiny Things, The','PG','drama','2002-03-06');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('88','End of the Line','R','misc','2001-02-05');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('87','A Rat named Darcy','G','family','2003-04-19');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('86','Head First Rules','R','action','2003-04-19');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('85','Mad Clowns','R','horror','1999-11-20');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('84','Greg: The Untold Story','PG','action','2001-02-05');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('93','Potentially Habitable Planet','PG','scifi','2001-02-05');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('92','Weird Things from Space','PG','scifi','2003-04-19');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('91','Shark Bait','G','misc','1999-11-20');
INSERT INTO `movie_table` (`movie_id`,`title`,`rating`,`category`,`purchased`) VALUES ('90','Take it Back','R','comedy','2001-02-05');

CREATE TABLE cookie_sales (
  ID int(11) NOT NULL auto_increment,
  first_name varchar(20) NOT NULL,
  sales decimal(4,2) NOT NULL,
  sale_date date NOT NULL,
  PRIMARY KEY  (ID)
);

INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('1','Lindsey',32.02,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('2','Nicole',26.53,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('3','Britney',11.25,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('4','Ashley',18.96,'2007-03-12');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('5','Lindsey',9.16,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('6','Nicole',1.52,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('7','Britney',43.21,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('8','Ashley',8.05,'2007-03-11');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('9','Lindsey',17.62,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('10','Nicole',24.19,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('11','Britney',3.40,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('12','Ashley',15.21,'2007-03-10');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('13','Lindsey',0.00,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('14','Nicole',31.99,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('15','Britney',2.58,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('16','Ashley',0.00,'2007-03-09');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('17','Lindsey',2.34,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('18','Nicole',13.44,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('19','Britney',8.78,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('20','Ashley',26.82,'2007-03-08');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('21','Lindsey',3.71,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('22','Nicole',0.56,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('23','Britney',34.19,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('24','Ashley',7.77,'2007-03-07');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('25','Lindsey',16.23,'2007-03-06');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('26','Nicole',0.00,'2007-03-06');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('27','Britney',4.50,'2007-03-06');
INSERT INTO `cookie_sales` (`ID`,`first_name`,`sales`,`sale_date`) VALUES ('28','Ashley',19.22,'2007-03-06');

ALTER TABLE movie_table
ADD COLUMN drama CHAR(1);
ALTER TABLE movie_table
ADD COLUMN comedy CHAR(1);
ALTER TABLE movie_table
ADD COLUMN action CHAR(1);
ALTER TABLE movie_table
ADD COLUMN gore CHAR(1);
ALTER TABLE movie_table
ADD COLUMN sci_fi CHAR(1);
ALTER TABLE movie_table
ADD COLUMN for_kids CHAR(1);

INSERT INTO movie_table (drama, comedy, action, gore, sci_fi, for_kids, cartoon)
VALUES
 ('F', 'T', 'F', 'F', 'F', 'T', 'T');
INSERT INTO movie_table (drama, comedy, action, gore, sci_fi, for_kids, cartoon)
VALUES
 ('F', 'F', 'T', 'T', 'F', 'F', 'F');
INSERT INTO movie_table (drama, comedy, action, gore, sci_fi, for_kids, cartoon)
VALUES
 ('T', 'F', 'F', 'F', 'F', 'F', 'F');
INSERT INTO movie_table (drama, comedy, action, gore, sci_fi, for_kids, cartoon)
VALUES
 ('F', 'T', 'F', ' F', 'F', 'F', 'F');
INSERT INTO movie_table (drama, comedy, action, gore, sci_fi, for_kids, cartoon)
VALUES
 ('F', 'F', 'T', 'T', 'F', 'F', 'F');
INSERT INTO movie_table (drama, comedy, action, gore, sci_fi, for_kids, cartoon)
VALUES 
('T', 'F', 'F', 'F', 'F', 'F', 'F');
