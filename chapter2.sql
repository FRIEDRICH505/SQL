USE gregs_list;
# Dump of table my_contacts# ------------------------------------------------------------
drop table my_contacts;
CREATE TABLE `my_contacts` (
  `last_name` varchar(30) ,
  `first_name` varchar(20) ,
  `email` varchar(50) ,
  `gender` char(1),
  `birthday` date ,
  `profession` varchar(50),
  `location` varchar(50),
  `status` varchar(20),
  `interests` varchar(100),
  `seeking` varchar(100)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Anderson','Jillian','jill_anderson@ \nbreakneckpizza.com','F','1980-09-05','Technical Writer','Palo Alto, CA','single','kayaking, reptiles','relationship, friends');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Kenton','Leo','lkenton@starbuzzcoffee.com','M','1974-01-10','Manager','San Francisco, CA','divorced','women','women to date');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('McGavin','Darrin',' captainlove@headfirsttheater.com','M','1966-01-23','Cruise Ship Captain','San Diego, CA','single','sailing, fishing, yachting','women for casual relationships');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Franklin','Joe','joe_franklin@leapinlimos.com','M','1977-04-28','Software Sales','Dallas, TX','married','fishing, drinking','new job');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Hamilton','Jamie','dontbother@starbuzzcoffee.com','F','1964-09-10','System Administrator','Princeton, NJ','married','RPG','nothing');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Chevrolet','Maurice','bookman4u@objectville.net','M','1962-07-01','Bookshop Owner','Mountain View, CA','married','collecting books, scuba diving','friends');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Kroger','Renee','poorrenee@mightygumball.net','F','1976-12-03','Unemployed','San Francisco, CA','divorced','cooking','employment');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Mendoza','Angelina','angelina@starbuzzcoffee.com','F','1979-08-19','UNIX Sysadmin','San Francisco, CA','married','acting, dancing','new job');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Murphy','Donald','padraic@tikibeanlounge.com','M','1967-01-23','Computer Programmer','New York City, NY','committed relationsh','RPG, anime','friends');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`,`profession`,`location`,`status`,`interests`,`seeking`) VALUES ('Spatner','John','jpoet@objectville.net','M','1963-04-18','Salesman','Woodstock, NY','married','poetry, screenwriting','nothing');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Toth','Anne','Anne_Toth@leapinlimos.com','F','1969-11-18', 'Artist','San Fran, CA');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Manson','Anne','am86@objectville.net','F','1977-08-09', 'Baker','Seattle, WA');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Hardy','Anne','anneh@b0tt0msup.com','F','1963-04-18', 'Teacher','San Fran, CA');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Parker','Anne','annep@starbuzzcoffee.com','F','1983-01-10', 'Student','San Fran, CA');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Blunt','Anne','anneblunt@breakneckpizza.com','F','1959-10-09', 'Web Designer','San Fran, CA');
INSERT INTO `my_contacts` (`last_name`,`first_name`,`email`,`gender`,`birthday`, `profession`,`location`) VALUES ('Jacobs','Anne','anne99@objectville.net','F','1968-02-05', 'Computer Programmer','San Jose, CA');


CREATE TABLE `easy_drinks` (
  `drink_name` varchar(16) default NULL,
  `main` varchar(20) default NULL,
  `amount1` decimal(3,1) default NULL,
  `second` varchar(20) default NULL,
  `amount2` decimal(4,2) default NULL,
  `directions` varchar(250) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `easy_drinks` (`drink_name`,`main`,`amount1`,`second`,`amount2`,`directions`) VALUES ('Kiss on the Lips','cherry juice',2.0,'apricot nectar',7.00,'serve over ice with straw');
INSERT INTO `easy_drinks` (`drink_name`,`main`,`amount1`,`second`,`amount2`,`directions`) VALUES ('Hot Gold','peach nectar',3.0,'orange juice',6.00,'pour hot orange juice in mug and add peach nectar');
INSERT INTO `easy_drinks` (`drink_name`,`main`,`amount1`,`second`,`amount2`,`directions`) VALUES ('Lone Tree','soda',1.5,'cherry juice',0.75,'stir with ice, strain into cocktail glass');
INSERT INTO `easy_drinks` (`drink_name`,`main`,`amount1`,`second`,`amount2`,`directions`) VALUES ('Greyhound','soda',1.5,'grapefruit juice',5.00,'serve over ice, stir well');
INSERT INTO `easy_drinks` (`drink_name`,`main`,`amount1`,`second`,`amount2`,`directions`) VALUES ('Indian Summer','apple juice',2.0,'hot tea',6.00,'add juice to mug and top off with hot tea');
INSERT INTO `easy_drinks` (`drink_name`,`main`,`amount1`,`second`,`amount2`,`directions`) VALUES ('Bull Frog','iced tea',1.5,'lemonade',5.00,'serve over ice with lime slice');
INSERT INTO `easy_drinks` (`drink_name`,`main`,`amount1`,`second`,`amount2`,`directions`) VALUES ('Soda and It','soda',2.0,'grape juice',1.00,'shake in cocktail glass, no ice');
INSERT INTO `easy_drinks` (`drink_name`,`main`,`amount1`,`second`,`amount2`,`directions`) VALUES ('Blackthorn','tonic water',1.5,'pineapple juice',1.00,'stir with ice, strain into cocktail glass with lemon twist');
INSERT INTO `easy_drinks` (`drink_name`,`main`,`amount1`,`second`,`amount2`,`directions`) VALUES ('Blue Moon','soda',1.5,'blueberry juice',0.75,'stir with ice, strain into cocktail glass with lemon twist');
INSERT INTO `easy_drinks` (`drink_name`,`main`,`amount1`,`second`,`amount2`,`directions`) VALUES ('Oh My Gosh','peach nectar',1.0,'pineapple juice',1.00,'stir with ice, strain into shot glass');
INSERT INTO `easy_drinks` (`drink_name`,`main`,`amount1`,`second`,`amount2`,`directions`) VALUES ('Lime Fizz','Sprite',1.5,'lime juice',0.75,'stir with ice, strain into cocktail glass');



CREATE TABLE `doughnut_ratings` (
  `location` varchar(50) default NULL,
  `time` time default NULL,
  `date` date default NULL,
  `type` varchar(50) default NULL,
  `rating` tinyint(4) default NULL,
  `comments` varchar(50) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Krispy King','08:50:00','2007-09-27','plain glazed','10','almost perfect');
INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Duncan\\\'s Donuts','08:59:00','2007-08-25',NULL,'6','greasy');
INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Starbuzz Coffee','07:35:00','2007-05-24','cinnamon cake','5','stale, but tasty');
INSERT INTO `doughnut_ratings` (`location`,`time`,`date`,`type`,`rating`,`comments`) VALUES ('Duncan\\\'s Donuts','07:03:00','2007-04-26','jelly','7','not enough jelly');


CREATE TABLE `drink_info` (
  `drink_name` varchar(16) default NULL,
  `cost` decimal(4,2) default NULL,
  `carbs` decimal(4,2) default NULL,
  `color` varchar(20) default NULL,
  `ice` char(1) default NULL,
  `calories` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO drink_info VALUES ('Blackthorn', 3, 8.4, 'yellow', 'Y', 33); 
INSERT INTO drink_info VALUES ('Blue Moon', 2.5, 3.2, 'blue', 'Y', 12); 
INSERT INTO drink_info VALUES ('Oh My Gosh', 3.5, 8.6, 'orange', 'Y', 35); 
INSERT INTO drink_info VALUES ('Lime Fizz', 2.5, 5.4, 'green', 'Y', 24); 
INSERT INTO drink_info VALUES ('Kiss on the Lips', 5.5, 42.5, 'purple', 'Y', 171); 
INSERT INTO drink_info VALUES ('Hot Gold', 3.2, 32.1, 'orange', 'N', 135); 
INSERT INTO drink_info VALUES ('Lone Tree', 3.6, 4.2, 'red', 'Y', 17); 
INSERT INTO drink_info VALUES ('Greyhound', 4, 14, 'yellow', 'Y', 50); 
INSERT INTO drink_info VALUES ('Indian Summer', 2.8, 7.2, 'brown', 'N', 30); 
INSERT INTO drink_info VALUES ('Bull Frog', 2.6, 21.5, 'tan', 'Y', 80); 
INSERT INTO drink_info VALUES ('Soda and It', 3.8, 4.7, 'red', 'N', 19); 
INSERT INTO drink_info VALUES ('Slim Shady', 4.35, NULL, 'clear', 'Y', NULL); 

USE Gregs_List;
SELECT * from my_contacts;

SELECT * FROM my_contacts
WHERE first_name = 'Anne';

SELECT * FROM easy_drinks WHERE main = 'Sprite';
--'Lime Fizz', 'Sprite', '1.5', 'lime juice', '0.75', 'stir with ice, strain into cocktail glass'

SELECT * FROM easy_drinks WHERE amount2 = 6;
--'Hot Gold', 'peach nectar', '3.0', 'orange juice', '6.00', 'pour hot orange juice in mug and add peach nectar'
--'Indian Summer', 'apple juice', '2.0', 'hot tea', '6.00', 'add juice to mug and top off with hot tea'

SELECT * FROM easy_drinks WHERE second = "orange juice";
--'Hot Gold', 'peach nectar', '3.0', 'orange juice', '6.00', 'pour hot orange juice in mug and add peach nectar'

SELECT * FROM easy_drinks WHERE amount1 < 1.5;
--'Oh My Gosh', 'peach nectar', '1.0', 'pineapple juice', '1.00', 'stir with ice, strain into shot glass'

SELECT * FROM easy_drinks WHERE amount2 < '1';
--'Lone Tree', 'soda', '1.5', 'cherry juice', '0.75', 'stir with ice, strain into cocktail glass'
--'Blue Moon', 'soda', '1.5', 'blueberry juice', '0.75', 'stir with ice, strain into cocktail glass with lemon twist'
--'Lime Fizz', 'Sprite', '1.5', 'lime juice', '0.75', 'stir with ice, strain into cocktail glass'

SELECT * FROM easy_drinks WHERE main > 'soda';
--'Blackthorn', 'tonic water', '1.5', 'pineapple juice', '1.00', 'stir with ice, strain into cocktail glass with lemon twist'
--'Lime Fizz', 'Sprite', '1.5', 'lime juice', '0.75', 'stir with ice, strain into cocktail glass'

SELECT * FROM easy_drinks WHERE amount1 = '1.5';
--'Lone Tree', 'soda', '1.5', 'cherry juice', '0.75', 'stir with ice, strain into cocktail glass'
--'Greyhound', 'soda', '1.5', 'grapefruit juice', '5.00', 'serve over ice, stir well'
--'Bull Frog', 'iced tea', '1.5', 'lemonade', '5.00', 'serve over ice with lime slice'
--'Blackthorn', 'tonic water', '1.5', 'pineapple juice', '1.00', 'stir with ice, strain into cocktail glass with lemon twist'
--'Blue Moon', 'soda', '1.5', 'blueberry juice', '0.75', 'stir with ice, strain into cocktail glass with lemon twist'
--'Lime Fizz', 'Sprite', '1.5', 'lime juice', '0.75', 'stir with ice, strain into cocktail glass'

INSERT INTO my_contacts
VALUES
('Funyon','Steve','steve@onionflavoredrings.com',
'M','1970-04-01','Punk','Grover's Mill, NJ',
'Single','smashing the state','compatriots,
guitar players');

INSERT INTO my_contacts
(location)
VALUES
('Grover\'s Mill');

INSERT INTO my_contacts
VALUES
('Funyon','Steve','steve@onionflavoredrings.
com', 'M', '1970-04-01', 'Punk','Grover\'s Mill,
NJ','Single','smashing the state','compatriots,
guitar players');

SELECT * FROM my_contacts
WHERE
location = 'Grover\'s Mill, NJ';
SELECT * FROM my_contacts
WHERE
location = 'Grover''s Mill, NJ';

SELECT drink_name, main, second
FROM easy_drinks
WHERE main = 'soda';

SELECT * FROM easy_drinks;

SELECT drink_name, main, second
FROM easy_drinks;

SELECT drink_name FROM easy_drinks
WHERE
main = 'cherry juice';

USE gregs_list;
SELECT location, rating FROM doughnut_ratings
WHERE
type = 'plain glazed';

SELECT location, type FROM doughnut_ratings
WHERE
rating = 10;

SELECT location
FROM doughnut_ratings
WHERE type = 'plain glazed'
AND
rating = 10;

SELECT drink_name FROM easy_drinks
WHERE
main = 'soda'
AND
amount1 = 1.5;

SELECT drink_name FROM easy_drinks
WHERE
main = 'soda'
AND
amount1 = 2;

USE gregs_list;
SELECT drink_name FROM easy_drinks
WHERE
main = 'soda'
AND
amount1 > 1;

SELECT drink_name FROM drink_info
WHERE
cost >= 3.5
AND
calories < 50;

SELECT cost FROM drink_info
WHERE ice = 'Y'
AND
color = 'yellow'
AND
calories > 33;
--'4.00'

SELECT drink_name, color FROM drink_info
WHERE
carbs <= 4
AND
ice = 'Y';
--'Blue Moon', 'blue'

SELECT cost FROM drink_info
WHERE
calories >= 80;
--'3.20'
--'5.50'
--'2.60'

SELECT drink_name, color, ice FROM drink_info
WHERE
cost > 3.8;
--'Kiss on the Lips', 'purple', 'Y'
--'Greyhound', 'yellow', 'Y'
--'Slim Shady', 'clear', 'Y'

SELECT drink_name
FROM drink_info
WHERE
drink_name >= 'L'
AND
drink_name < 'M';

SELECT type FROM doughnut_ratings
WHERE location = 'Krispy King' AND rating <> 6;
--'plain glazed'

SELECT type FROM doughnut_ratings
WHERE location = 'Krispy King' AND rating = 3;
--No Result

SELECT type FROM doughnut_ratings
WHERE location = 'Snappy Bagel' AND rating >= 6;
--No Result

SELECT type FROM doughnut_ratings
WHERE location = 'Krispy King' OR rating > 5;
--'plain glazed'
--NULL
--'jelly'

SELECT type FROM doughnut_ratings
WHERE location = 'Krispy King' OR rating = 3;
--'plain glazed'

SELECT type FROM doughnut_ratings
WHERE location = 'Snappy Bagel' OR rating = 6;
--NULL

SELECT drink_name
FROM drink_info
WHERE
calories IS NULL;

SELECT * FROM my_contacts
WHERE location LIKE '%CA';

SELECT first_name FROM my_contacts
WHERE first_name LIKE '%im';

SELECT first_name FROM my_contacts
WHERE first_name LIKE '_im';

USE gregs_list;
SELECT drink_name FROM drink_info
WHERE
calories >= 30
AND
calories <= 60;

SELECT drink_name FROM drink_info
WHERE
calories BETWEEN 30 AND 60;

SELECT drink_name FROM drink_info
WHERE NOT carbs BETWEEN 3 AND 5;


