/*
=========================================================
Project: Student Performance Analysis
File: 03_study_time_analysis.sql

Description:
Compares the average final exam score across study time
groups.

Author: Izabella
Database: PostgreSQL
=========================================================
*/

SELECT
    CASE
        WHEN study_time_hours >= 5 THEN 'High Study Time'
        WHEN study_time_hours >= 3 THEN 'Medium Study Time'
        ELSE 'Low Study Time'
    END AS study_time_group,
    COUNT(*) AS total_students,
    ROUND(AVG(final_exam_score), 2) AS average_exam_score
FROM students
GROUP BY study_time_group
ORDER BY average_exam_score DESC;

/*
Result:

Study Time Group | Students | Average Exam Score
-----------------|----------|-------------------
High Study Time  | 181      | 92.14
Medium Study Time| 475      | 84.86
Low Study Time   | 344      | 77.21

Conclusion:
Students studying 5 or more hours achieved, on average,
14.93 points higher on the final exam than students
studying less than 3 hours.
*/
