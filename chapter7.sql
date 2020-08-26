USE gregs_list;
CREATE TABLE `super_heroes` (
  `name` varchar(20) NOT NULL,
  `power` varchar(50) NOT NULL default '',
  `weakness` varchar(20) NOT NULL default '',
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `arch_enemy` varchar(50) NOT NULL,
  `initials` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `super_heroes` (`name`,`power`,`weakness`,`city`,`country`,`arch_enemy`,`initials`) VALUES ('Super Trashman','Cleans quickly','bleach','Gotham','US','Verminator','ST');
INSERT INTO `super_heroes` (`name`,`power`,`weakness`,`city`,`country`,`arch_enemy`,`initials`) VALUES ('The Broker','Makes money from nothing','','New York','US','Mister Taxman','TB');
INSERT INTO `super_heroes` (`name`,`power`,`weakness`,`city`,`country`,`arch_enemy`,`initials`) VALUES ('Super Guy','Flies','birds','Metropolis','US','Super Fella','SG');
INSERT INTO `super_heroes` (`name`,`power`,`weakness`,`city`,`country`,`arch_enemy`,`initials`) VALUES ('Wonder Waiter','Never forgets an order','insects','Paris','France','All You Can Eat Girl','WW');
INSERT INTO `super_heroes` (`name`,`power`,`weakness`,`city`,`country`,`arch_enemy`,`initials`) VALUES ('Dirtman','Creates dust storms','bleach','Tulsa','US','Hoover','D');
INSERT INTO `super_heroes` (`name`,`power`,`weakness`,`city`,`country`,`arch_enemy`,`initials`) VALUES ('Super Guy','Super strength','aluminum','Metropolis','US','Badman','SG');
INSERT INTO `super_heroes` (`name`,`power`,`weakness`,`city`,`country`,`arch_enemy`,`initials`) VALUES ('Furious Woman','Gets really, really angry','','Rome','Italy','The Therapist','FW');
INSERT INTO `super_heroes` (`name`,`power`,`weakness`,`city`,`country`,`arch_enemy`,`initials`) VALUES ('The Toad','Tongue of Justice','insects','London','England','Heron','T');
INSERT INTO `super_heroes` (`name`,`power`,`weakness`,`city`,`country`,`arch_enemy`,`initials`) VALUES ('Librarian','Can find anything','children','Springfield','US','Chaos Creep','L');
INSERT INTO `super_heroes` (`name`,`power`,`weakness`,`city`,`country`,`arch_enemy`,`initials`) VALUES ('Goose Girl','Flies','','Minneapolis','US','The Quilter','GG');
INSERT INTO `super_heroes` (`name`,`power`,`weakness`,`city`,`country`,`arch_enemy`,`initials`) VALUES ('Stick Man','Stands in for humans','hang man','London','England','Eraserman','SM');


ALTER TABLE my_contacts
ADD COLUMN interest1 VARCHAR(50),
ADD COLUMN interest2 VARCHAR(50),
ADD COLUMN interest3 VARCHAR(50),
ADD COLUMN interest4 VARCHAR(50);

UPDATE my_contacts
SET interest1 = SUBSTRING_INDEX(interests, ',', 1);

UPDATE my_contacts SET interests = TRIM(RIGHT(interests,
(LENGTH(interests)-LENGTH(interest1) - 1)));

UPDATE my_contacts SET interest2 = SUBSTRING_INDEX(interests, ',', 1);
UPDATE my_contacts SET interests = TRIM(RIGHT(interests, (LENGTH(interests)-
LENGTH(interest2) - 1)));
UPDATE my_contacts SET interest3 = SUBSTRING_INDEX(interests, ',', 1);
UPDATE my_contacts SET interests = TRIM(RIGHT(interests, (LENGTH(interests)-
LENGTH(interest3) - 1)));

UPDATE my_contacts SET interest4 = interests;