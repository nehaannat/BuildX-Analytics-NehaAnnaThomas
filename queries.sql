-- Query 1: Display all placed students
SELECT * FROM cleaned_dataset WHERE status = 'Placed';

-- Query 2: Find the average salary by specialization
SELECT specialisation, AVG(salary) AS average_salary FROM cleaned_dataset GROUP BY specialisation;

-- Query 3: Display students from highest salary to lowest salary
SELECT gender, specialisation, salary FROM cleaned_dataset ORDER BY salary DESC;

-- Query 4: Show specializations with more than 50 students
SELECT specialisation, COUNT(*) AS total_students FROM cleaned_dataset GROUP BY specialisation HAVING COUNT(*) > 50;

-- Query 5: Display students whose SSC percentage is between 70 and 90
SELECT * FROM cleaned_dataset WHERE ssc_percentage BETWEEN 70 AND 90;

-- Query 6: Find the average salary of placed students by specialization with average salary greater than 250000, sorted in descending order
SELECT specialisation, AVG(salary) AS average_salary FROM cleaned_dataset WHERE status = 'Placed' GROUP BY specialisation HAVING AVG(salary) > 250000 ORDER BY average_salary DESC;