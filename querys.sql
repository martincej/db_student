SELECT year,
       ROUND(AVG(average_grade), 2) AS average
FROM (
    SELECT s.year,
           AVG(g.grade) AS average_grade
    FROM students s
    JOIN grades g ON s.student_id = g.student_id
    GROUP BY s.year, s.student_id
) AS student_averages
GROUP BY year;


SELECT section,
       ROUND(AVG(average_grade), 2) AS average
FROM (
    SELECT s.section,
           AVG(g.grade) AS average_grade
    FROM students s
    JOIN grades g ON s.student_id = g.student_id
    GROUP BY s.section, s.student_id
) AS student_averages
GROUP BY section
ORDER BY average DESC
LIMIT 1;


SELECT section,
       ROUND(AVG(average_grade), 2) AS average
FROM (
    SELECT s.section,
           AVG(g.grade) AS average_grade
    FROM students s
    JOIN grades g ON s.student_id = g.student_id
    GROUP BY s.section, s.student_id
) AS student_averages
GROUP BY section
ORDER BY average DESC
LIMIT 1;
