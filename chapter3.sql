CREATE TABLE `clown_info` (
 `name` varchar(50) default NULL,
 `last_seen` varchar(50) default NULL,
 `appearance` varchar(50) default NULL,
 `activities` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO clown_info VALUES ('Elsie', 'Cherry Hill Senior Center', 'F, red hair, green dress, huge feet', 'balloons, little car');
INSERT INTO clown_info VALUES ('Pickles', 'Jack Green\'s party', 'M, orange hair, blue suit, huge feet','mime');
INSERT INTO clown_info VALUES ('Snuggles' ,'Ball?Mart' ,'F, yellow shirt, baggy red pants', 'horn, umbrella');
INSERT INTO clown_info VALUES ('Mr. Hobo' ,'Party for Eric Gray' ,'M, cigar, black hair, tiny hat violin');
INSERT INTO clown_info VALUES ('Clarabelle' ,'Belmont Senior Center' ,'F, pink hair, huge flower, blue dress', 'yelling, dancing');
INSERT INTO clown_info VALUES ('Scooter', 'Oakland Hospital' ,'M, blue hair, red suit, huge nose', 'balloons'); 
INSERT INTO clown_info VALUES ('Zippo' ,'Millstone Mall', 'F, orange suit, baggy pants', 'dancing'); 
INSERT INTO clown_info VALUES ('Babe', 'Earls Autos' ,'F, all pink and sparkly', 'balancing, little car');
INSERT INTO clown_info VALUES ('Bonzo' ,'','M, in drag, polka dotted dress', 'singing, dancing');
INSERT INTO clown_info VALUES ('Sniffles' ,'Tracy\'s', 'M, green and purple suit, pointy nose',''); 

INSERT INTO clown_info
VALUES
('Zippo', 'Millstone Mall', 'F, orange suit, baggy pants',
'dancing, singing');

INSERT INTO clown_info
VALUES
('Snuggles', 'Ball-Mart', 'F, yellow shirt, baggy blue pants',
'horn, umbrella');

INSERT INTO clown_info
VALUES
('Bonzo', 'Dickson Park', 'M, in drag, polka dotted dress',
'singing, dancing');

INSERT INTO clown_info
VALUES
('Sniffles', 'Tracy\'s', 'M, green and purple suit, pointy nose',
'climbing into tiny car');

INSERT INTO clown_info
VALUES
('Mr. Hobo', 'Party for Eric Gray', 'M, cigar, black hair
tiny hat', 'violin');

SELECT * FROM clown_info WHERE name = 'Zippo';

DELETE FROM clown_info
WHERE
activities = 'dancing';

INSERT INTO clown_info
VALUES
('Clarabelle', 'Belmont Senior Center', 'F, pink hair,
huge flower, blue dress', 'dancing');

DELETE FROM clown_info
WHERE
activities = 'yelling, dancing'
AND name = 'Clarabelle';

INSERT INTO drink_info VALUES ('Kiss on the Lips', 5.5, 42.5, 'purple', 'Y', 170);
DELETE FROM drink_info WHERE calories = 171;

INSERT INTO drink_info VALUES ('Blackthorn', 3, 8.4, 'gold', 'Y', 33),
('Greyhound', 4, 14, 'gold', 'Y', 50);
DELETE FROM drink_info WHERE color = 'yellow';

INSERT INTO drink_info VALUES ('Oh My Gosh', 4.5, 8.6, 'orange', 'Y', 35);
DELETE FROM drink_info WHERE cost = 3.5;
INSERT INTO drink_info VALUES ('Blue Moon', 3.5, 3.2, 'blue', 'Y', 12),
('Lime Fizz', 3.5, 5.4, 'green', 'Y', 24);
DELETE FROM drink_info WHERE cost = 2.5;

INSERT INTO clown_info
VALUES
('Mr. Hobo', 'Tracy\'s', 'M, cigar,
black hair, tiny hat', 'violin');

SELECT * FROM clown_info
WHERE
activities = 'dancing';
--'Clarabelle', 'Belmont Senior Center', 'F, pink hair,\nhuge flower, blue dress', 'dancing'

UPDATE doughnut_ratings
SET
type = 'glazed'
WHERE type = 'plain glazed';

CREATE TABLE `your_table` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` varchar(20) default NULL,
  `last_name` varchar(30) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

INSERT INTO `your_table` (`id`,`first_name`,`last_name`) VALUES ('1','Marcia','Brady');
INSERT INTO `your_table` (`id`,`first_name`,`last_name`) VALUES ('2','Bobby','Brady');
INSERT INTO `your_table` (`id`,`first_name`,`last_name`) VALUES ('3','Cindy','Brady');
INSERT INTO `your_table` (`id`,`first_name`,`last_name`) VALUES ('99','Peter','Brady');

UPDATE clown_info
SET last_seen = 'Tracy\'s'
WHERE name = 'Mr. Hobo'
AND last_seen = 'Dickson Park';

UPDATE clown_info
SET last_seen = 'Tracy\'s'
WHERE name = 'Mr. Hobo'
AND last_seen = 'Party for Eric Gray';

UPDATE clown_info
SET activities = 'singing'
WHERE name = 'Zippo';

UPDATE clown_info
SET appearance = 'F, yellow shirt, baggy blue pants'
WHERE name = 'Snuggles';

UPDATE clown_info
SET last_seen = 'Dickson Park'
WHERE name = 'Bonzo';

UPDATE clown_info
SET activities = 'climbing into tiny car'
WHERE name = 'Sniffles';

UPDATE clown_info
SET last_seen = 'Eric Gray\'s Party'
WHERE name = 'Mr. Hobo';

USE gregs_list;
UPDATE drink_info
SET cost = 3.5
WHERE drink_name = 'Blue Moon';

UPDATE drink_info
SET cost = cost + 1
WHERE
drink_name='Blue Moon'
OR
drink_name='Oh My Gosh'
OR
drink_name= 'Lime Fizz';



