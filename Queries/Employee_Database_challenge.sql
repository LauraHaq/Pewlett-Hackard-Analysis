
-- Deliverable 1. Create retirement_titles.csv
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    t.title,
    t.from_date,
    t.to_date
FROM employees AS e
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Create unique_tites.csv
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- Number of employees about to retire
SELECT COUNT(emp_no) FROM unique_titles;

-- Create retiring_titles.csv
SELECT COUNT(ut.emp_no),ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;

-- Number of titles 
SELECT COUNT(title)
FROM retiring_titles;

-- Deliverable #2 Create mentor_elegibilty.csv
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   t.title
INTO mentor_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (de.to_date = ('9999-01-01'))
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- FIND A FOURTH RESULT
SELECT DISTINCT ON(emp_no) emp_no, 
		dept_no, 
		to_date
INTO dept_affected
FROM dept_emp
ORDER BY emp_no ASC, to_date DESC;

SELECT ut.emp_no, ut.title, da.dept_no, da.to_date, d.dept_name
INTO dept_unique
FROM unique_titles as ut
LEFT JOIN dept_affected as da
ON ut.emp_no = da.emp_no
LEFT JOIN departments as d
ON da.dept_no = d.dept_no;

SELECT COUNT(emp_no) AS emp_count, dept_name
FROM dept_unique
GROUP BY dept_name
ORDER BY emp_count DESC;