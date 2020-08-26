USE gregs_list;
SELECT title FROM job_listings
GROUP BY title ORDER BY title;

SELECT mc.first_name, mc.last_name, mc.phone, jc.title
FROM job_current AS jc NATURAL JOIN my_contacts AS mc
WHERE
jc.title IN ('Cook', 'Hairdresser', 'Waiter', 'Web Designer', 'Web Developer');

SELECT mc.first_name, mc.last_name, mc.phone, jc.title
FROM job_current AS jc NATURAL JOIN my_contacts AS mc
WHERE jc.title IN (SELECT title FROM job_listings);

SELECT mc.first_name AS firstname, mc.last_name AS lastname,
mc.phone AS phone, jc.title AS jobtitle
FROM job_current AS jc NATURAL JOIN my_contacts AS mc
WHERE jobtitle IN (SELECT title FROM job_listings);

SELECT MAX(salary) FROM job_current;

SELECT mc.first_name, mc.last_name
FROM my_contacts AS mc;

SELECT mc.first_name, mc.last_name, jc.salary
FROM my_contacts AS mc NATURAL JOIN job_current AS jc
WHERE jc.salary =
(SELECT MAX(jc.salary) FROM job_current jc);

SELECT mc.first_name, mc.last_name,
(SELECT state
FROM zip_code
WHERE mc.zip_code = zip_code) AS state
FROM my_contacts mc;

SELECT mc.first_name, mc.last_name
FROM my_contacts AS mc
WHERE
3 = (
SELECT COUNT(*) FROM contact_interest
WHERE contact_id = mc.contact_id
);

SELECT mc.first_name firstname, mc.last_name lastname, mc.email email
FROM my_contacts mc
WHERE NOT EXISTS
(SELECT * FROM job_current jc
WHERE mc.contact_id = jc.contact_id );






