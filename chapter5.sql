USE gregs_list;
CREATE TABLE `projekts` (
  `number` int(11) NOT NULL default '0',
  `descriptionofproj` varchar(50) default NULL,
  `contractoronjob` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('1','outside house painting','Murphy');
INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('2','kitchen remodel','Valdez');
INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('3','wood floor installation','Keller');
INSERT INTO `projekts` (`number`,`descriptionofproj`,`contractoronjob`) VALUES ('4','roofing','Jackson');

ALTER TABLE projekts
RENAME TO project_list;

ALTER TABLE project_list
CHANGE COLUMN number proj_id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (proj_id);

ALTER TABLE project_list
CHANGE COLUMN descriptionofproj proj_desc VARCHAR(100),
CHANGE COLUMN contractoronjob con_name VARCHAR(30);

ALTER TABLE project_list
MODIFY COLUMN proj_desc VARCHAR(120);

ALTER TABLE project_list
ADD COLUMN con_phone VARCHAR(10),
ADD COLUMN start_date DATE,
ADD COLUMN est_cost DECIMAL(7,2);

--'1', 'outside house painting', 'Murphy', NULL, NULL, NULL
--'2', 'kitchen remodel', 'Valdez', NULL, NULL, NULL
--'3', 'wood floor installation', 'Keller', NULL, NULL, NULL
--'4', 'roofing', 'Jackson', NULL, NULL, NULL

CREATE TABLE `hooptie` (
  `color` varchar(20) default NULL,
  `year` varchar(4) default NULL,
  `make` varchar(20) default NULL,
  `mo` varchar(20) default NULL,
  `howmuch` float(10,3) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `hooptie` (`color`,`year`,`make`,`mo`,`howmuch`) VALUES ('silver','1998','Porsche','Boxter','17992.539');
INSERT INTO `hooptie` (`color`,`year`,`make`,`mo`,`howmuch`) VALUES (NULL,'2000','Jaguar','XJ','15995.000');
INSERT INTO `hooptie` (`color`,`year`,`make`,`mo`,`howmuch`) VALUES ('red','2002','Cadillac','Escalade','40215.898');

CREATE TABLE `car_table` (
  `VIN` varchar(16) default NULL,
  `make` varchar(20) default NULL,
  `model` varchar(20) default NULL,
  `color` varchar(20) default NULL,
  `price` decimal(7,2) default NULL,
  `year` varchar(4) default NULL,
  `car_id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`car_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `car_table` (`VIN`,`make`,`model`,`color`,`price`,`year`,`car_id`) VALUES (NULL,'Porsche','Boxter','silver','39393939392E3939','1998','1');
INSERT INTO `car_table` (`VIN`,`make`,`model`,`color`,`price`,`year`,`car_id`) VALUES (NULL,'Jaguar','XJ',NULL,'39393939392E3939','2000','2');
INSERT INTO `car_table` (`VIN`,`make`,`model`,`color`,`price`,`year`,`car_id`) VALUES (NULL,'Cadillac','Escalade','red','39393939392E3939','2002','3');

SELECT RIGHT(location, 2) FROM my_contacts;

SELECT SUBSTRING_INDEX(location, ',', 1) FROM my_contacts;

SELECT SUBSTRING('San Antonio, TX', 5, 3);
--Ant'

SELECT UPPER('uSa');
SELECT LOWER('spaGHEtti');
--'spaghetti'

SELECT REVERSE('spaGHEtti');
--'ittEHGaps'

SELECT LTRIM(' dogfood ');
SELECT RTRIM(' catfood ');
--' catfood'

SELECT LENGTH('San Antonio, TX ');
--'16'

UPDATE my_contacts
SET state = RIGHT(location, 2);

UPDATE my_contacts
SET state = RIGHT('Chester,NJ',2)

UPDATE my_contacts
SET state = RIGHT('San Mateo,CA',2)

ALTER TABLE my_contacts
CHANGE COLUMN status state VARCHAR(30);

