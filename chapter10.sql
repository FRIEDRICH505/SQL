USE gregs_list;
CREATE TABLE `girls` (
  `girl_id` int(11) default NULL,
  `girl` varchar(20) default NULL,
  `toy_id` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `girls` (`girl_id`,`girl`,`toy_id`) VALUES ('1','Jane','3');
INSERT INTO `girls` (`girl_id`,`girl`,`toy_id`) VALUES ('2','Sally','4');
INSERT INTO `girls` (`girl_id`,`girl`,`toy_id`) VALUES ('3','Cindy','1');
INSERT INTO `girls` (`girl_id`,`girl`,`toy_id`) VALUES ('4','Mandy','1');

SELECT g.girl, t.toy
FROM girls g
INNER JOIN toys t
ON g.toy_id = t.toy_id;

SELECT g.girl, t.toy
FROM girls g
LEFT OUTER JOIN toys t
ON g.toy_id = t.toy_id;

SELECT g.girl, t.toy
FROM toys t
LEFT OUTER JOIN girls g
ON g.toy_id = t.toy_id;
--'Cindy', 'hula hoop'
--'Mandy', 'hula hoop'
--NULL, 'balsa glider'
--'Jane', 'toy soldiers'
--'Sally', 'harmonica'
--NULL, 'baseball cards'
--NULL, 'tinker toys'
--NULL, 'etch-a-sketch'
--NULL, 'slinky'

SELECT g.girl, t.toy
FROM girls g
LEFT OUTER JOIN toys t
ON g.toy_id = t.toy_id;
--'Jane', 'toy soldiers'
--'Sally', 'harmonica'
--'Cindy', 'hula hoop'
--'Mandy', 'hula hoop'

SELECT g.girl, t.toy
FROM toys t
LEFT OUTER JOIN girls g
ON g.toy_id = t.toy_id;
--'Cindy', 'hula hoop'
--'Mandy', 'hula hoop'
--NULL, 'balsa glider'
--'Jane', 'toy soldiers'
--'Sally', 'harmonica'
--NULL, 'baseball cards'
--NULL, 'tinker toys'
--NULL, 'etch-a-sketch'
--NULL, 'slinky'

SELECT g.girl, t.toy
FROM toys t
LEFT OUTER JOIN girls g
ON g.toy_id = t.toy_id;
--'Cindy', 'hula hoop'
--'Mandy', 'hula hoop'
--NULL, 'balsa glider'
--'Jane', 'toy soldiers'
--'Sally', 'harmonica'
--NULL, 'baseball cards'
--NULL, 'tinker toys'
--NULL, 'etch-a-sketch'
--NULL, 'slinky'

SELECT g.girl, t.toy
FROM toys t
RIGHT OUTER JOIN girls g
ON g.toy_id = t.toy_id;
--'Jane', 'toy soldiers'
--'Sally', 'harmonica'
--'Cindy', 'hula hoop'
--'Mandy', 'hula hoop'

SELECT g.girl, t.toy
FROM girls g
LEFT OUTER JOIN toys t
ON g.toy_id = t.toy_id
--'Jane', 'toy soldiers'
--'Sally', 'harmonica'
--'Cindy', 'hula hoop'
--'Mandy', 'hula hoop'

SELECT title FROM job_current
UNION
SELECT title FROM job_desired
UNION
SELECT title FROM job_listings;

SELECT title FROM job_current
UNION ALL
SELECT title FROM job_desired
UNION ALL
SELECT title FROM job_listings
ORDER BY title;

CREATE TABLE my_union AS
SELECT title FROM job_current UNION
SELECT title FROM job_desired
UNION SELECT title FROM job_listings;

