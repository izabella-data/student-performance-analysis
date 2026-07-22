/*
=========================================================
Project: Student Performance Analysis
File: 01_data_overview.sql

Description:
Provides an overview of the dataset, including the total
number of students and summary statistics.

Author: Izabella
Database: PostgreSQL
=========================================================
*/

SELECT
    COUNT(*) AS total_students,
    ROUND(AVG(final_exam_score), 2) AS average_exam_score,
    MIN(final_exam_score) AS minimum_exam_score,
    MAX(final_exam_score) AS maximum_exam_score,
    ROUND(AVG(attendance_percent), 2) AS average_attendance,
    ROUND(AVG(study_time_hours), 2) AS average_study_time
FROM students;

/*
Result:

Metric                  | Value
------------------------|---------
Total Students          | 1000
Average Exam Score      | 83.54
Minimum Exam Score      | (query result)
Maximum Exam Score      | (query result)
Average Attendance (%)  | 85.09
Average Study Time (h)  | 3.57

Conclusion:
The dataset contains 1000 student records.
Students achieved an average final exam score of 83.54,
with an average attendance of 85.09% and an average
study time of 3.57 hours.
*/
