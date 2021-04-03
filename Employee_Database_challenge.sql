-- Joining employees and titles tables
SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
	   ti.titles,
	   ti.from_date,
	   ti.to_date
       
INTO retirements_titles
FROM employees AS e
INNER JOIN titles AS ti
ON e.emp_no = ti.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER by emp_no

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) 
emp_no,
first_name,
last_name,
title

INTO unique_title
FROM retirement_titles
ORDER BY emp_no;

--Create Retiring Titles table
select count(titles), titles 

INTO retiring_titles

from unique_titles
group by titles
BY count(titles) desc

-- Group By Table for different Titles
SELECT COUNT(titles) AS "Amount Per Title", titles FROM unique_titles
GROUP BY titles 
ORDER BY "Amount Per Title" DESC;

-- Selecting Employees for mentorship eligibility program
SELECT DISTINCT ON (emp_no)
	   e.emp_no,
       e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   ti.titles
INTO mentorship_eligibilty

FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN titles AS ti
ON e.emp_no = ti.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY (emp_no);

