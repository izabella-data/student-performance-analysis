/*
=========================================================
Project: Student Performance Analysis
File: 06_part_time_job_analysis.sql

Description:
Compares the average final exam score based on whether
students have a part-time job.

Author: Izabella
Database: PostgreSQL
=========================================================
*/

SELECT
    part_time_job,
    COUNT(*) AS total_students,
    ROUND(AVG(final_exam_score), 2) AS average_exam_score
FROM students
GROUP BY part_time_job
ORDER BY average_exam_score DESC;

/*
Result:

Part-Time Job | Students | Average Exam Score
--------------|----------|-------------------
No            | 684      | 84.58
Yes           | 316      | 81.29

Conclusion:
Students without a part-time job achieved slightly
higher exam scores than those balancing work and study.

The difference between the two groups is 3.29 points.
*/
