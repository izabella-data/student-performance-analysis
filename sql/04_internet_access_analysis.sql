/*
=========================================================
Project: Student Performance Analysis
File: 04_internet_access_analysis.sql

Description:
Compares the average final exam score based on students'
access to the internet.

Author: Izabella
Database: PostgreSQL
=========================================================
*/

SELECT
    internet_access AS access_to_internet,
    COUNT(*) AS total_students,
    ROUND(AVG(final_exam_score), 2) AS average_exam_score
FROM students
GROUP BY internet_access
ORDER BY average_exam_score DESC;

/*
Result:

Access to Internet | Students | Average Exam Score
--------------------------------------------------
Yes                | 811      | 84.28
No                 | 189      | 79.26

Conclusion:
Students with internet access achieved, on average,
5.02 points higher on the final exam than students
without internet access.
*/
