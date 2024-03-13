CREATE TABLE HR_data (
  id VARCHAR (30) Primary Key,
  first_name VARCHAR (255) NOT NULL,
  last_name VARCHAR (255) NOT NULL,
  birthdate VARCHAR (10) NOT NULL,
  gender VARCHAR (255) NOT NULL,
  race VARCHAR (255) NOT NULL,
  department VARCHAR (255) NOT NULL,
  jobtitle VARCHAR (255) NOT NULL,
  location VARCHAR (255) NOT NULL,
  hire_date VARCHAR (10) NOT NULL,
  termdate VARCHAR (30) NULL,
  location_city VARCHAR (255) NOT NULL,
  location_state VARCHAR (255) NOT NULL
  )
;


ALTER TABLE hr_data
RENAME COLUMN id TO emp_id;

ALTER TABLE hr_data
ALTER COLUMN birthdate TYPE date
using (birthdate::text::date);

SELECT department,gender,COUNT(*) AS count
FROM hr_data
GROUP BY department,gender
ORDER BY department

SELECT race, COUNT(*) AS COUNT
FROM HR_data
GROUP BY race

SELECT jobtitle,count(*) AS count
FROM hr_data
GROUP BY jobtitle
ORDER BY jobtitle DESC


SELECT location_state,COUNT(*) AS count
FROM hr_data
GROUP BY location_state
ORDER BY count DESC


SELECT department,ROUND(avg(termdate-hire_date)/365) AS avg_tenure
FROM hr_data
GROUP BY department
