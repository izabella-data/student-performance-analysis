/*
=========================================================
Project: Student Performance Analysis
File: 02_attendance_analysis.sql

Description:
Compares the average final exam score across attendance
groups.

Author: Izabella
Database: PostgreSQL
=========================================================
*/

SELECT
    CASE
        WHEN attendance_percent >= 90 THEN 'High Attendance'
        WHEN attendance_percent >= 75 THEN 'Medium Attendance'
        ELSE 'Low Attendance'
    END AS attendance_group,
    COUNT(*) AS total_students,
    ROUND(AVG(final_exam_score), 2) AS average_exam_score
FROM students
GROUP BY attendance_group
ORDER BY average_exam_score DESC;

/*
Result:

Attendance Group  | Students | Average Exam Score
------------------|----------|-------------------
High Attendance   | 326      | 86.41
Medium Attendance | 534      | 83.17
Low Attendance    | 140      | 78.29

Conclusion:
Students with high attendance achieved, on average,
8.12 points higher on the final exam than students
with low attendance.
*/
