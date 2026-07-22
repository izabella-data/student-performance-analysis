/*
=========================================================
Project: Student Performance Analysis
File: 09_risk_group.sql

Description:
Identifies students who may be at academic risk based
on low attendance, limited study time, and exam results
below the overall average.

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
    attendance_percent,
    study_time_hours,
    final_exam_score
FROM students, average_score
WHERE attendance_percent < 75
  AND study_time_hours < 3
  AND final_exam_score < avg_score
ORDER BY final_exam_score ASC;

/*
Result:

Students in Risk Group: 41

Share of Total Students: 4.1%

Conclusion:
A total of 41 students, or 4.1% of the dataset, meet
all three risk criteria:

- attendance below 75%;
- study time below 3 hours;
- final exam score below the overall average.

This query demonstrates the use of a CTE together with
multiple filtering conditions to identify a specific
student segment.
*/
