/*
=========================================================
Project: Student Performance Analysis
File: 05_parental_education_analysis.sql

Description:
Compares the average final exam score across parental
education groups.

Author: Izabella
Database: PostgreSQL
=========================================================
*/

SELECT
    parental_education,
    COUNT(*) AS total_students,
    ROUND(AVG(final_exam_score), 2) AS average_exam_score
FROM students
GROUP BY parental_education
ORDER BY average_exam_score DESC;

/*
Result:

Parental Education | Students | Average Exam Score
-------------------|----------|-------------------
PhD                | —        | 85.06
Masters            | —        | —
Bachelors          | —        | —
None               | —        | —
High School        | —        | 83.23

Conclusion:
The relationship between parental education and final
exam performance appears to be relatively weak.

The difference between the highest and lowest average
exam scores is only 1.83 points.
*/
