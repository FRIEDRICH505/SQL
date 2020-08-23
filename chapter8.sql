USE gregs_list;
UPDATE my_contacts
SET interest1 = SUBSTRING_INDEX(interests, ',', 1);

UPDATE my_contacts
SET interests = SUBSTR(interests, LENGTH(interest1)+2 );

CREATE TABLE profession
(
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
profession varchar(20)
);
INSERT INTO profession (profession)
SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;

CREATE TABLE `boys` (
  `boy_id` int(11) default NULL,
  `boy` varchar(20) default NULL,
  `toy_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('1','Davey','3');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('2','Bobby','5');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('3','Beaver','2');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('4','Richie','1');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('6','Johnny','4');
INSERT INTO `boys` (`boy_id`,`boy`,`toy_id`) VALUES ('5','Billy','2');

CREATE TABLE `toys` (
  `toy_id` int(11) default NULL,
  `toy` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('1','hula hoop');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('2','balsa glider');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('3','toy soldiers');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('4','harmonica');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('5','baseball cards');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('6','tinker toys');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('7','etch-a-sketch');
INSERT INTO `toys` (`toy_id`,`toy`) VALUES ('8','slinky');

SELECT t.toy, b.boy
FROM toys AS t
CROSS JOIN
boys AS b;

SELECT b1.boy, b2.boy
FROM boys AS b1 CROSS JOIN boys AS b2;

SELECT boys.boy, toys.toy
FROM boys
INNER JOIN
toys
ON boys.toy_id = toys.toy_id;

SELECT boys.boy, toys.toy
FROM boys
INNER JOIN
toys
ON boys.toy_id <> toys.toy_id
ORDER BY boys.boy;

SELECT boys.boy, toys.toy
FROM boys
NATURAL JOIN
toys;



