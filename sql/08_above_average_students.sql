/*
=========================================================
Project: Student Performance Analysis
File: 08_above_average_students.sql

Description:
Finds students whose final exam score is above the
overall average.

Author: Izabella
Database: PostgreSQL
=========================================================
*/

WITH average_score AS (
    SELECT AVG(final_exam_score) AS avg_score
    FROM students
)

SELECT
    student_id,
    final_exam_score
FROM students, average_score
WHERE final_exam_score > avg_score
ORDER BY final_exam_score DESC;

/*
Result:

Students Above Average: 504

Average Exam Score: 83.54

Conclusion:
A total of 504 students scored above the overall
average final exam score.

This query demonstrates the use of a Common Table
Expression (CTE) to calculate and reuse an aggregate
value within the same query.
*/
