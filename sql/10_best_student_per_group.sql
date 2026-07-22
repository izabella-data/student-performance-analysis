/*
=========================================================
Project: Student Performance Analysis
File: 10_best_student_per_group.sql

Description:
Identifies the highest-performing student within each
parental education group using the ROW_NUMBER()
window function.

Author: Izabella
Database: PostgreSQL
=========================================================
*/

WITH ranked_students AS (
    SELECT
        student_id,
        parental_education,
        final_exam_score,
        ROW_NUMBER() OVER (
            PARTITION BY parental_education
            ORDER BY final_exam_score DESC
        ) AS row_num
    FROM students
)

SELECT
    student_id,
    parental_education,
    final_exam_score
FROM ranked_students
WHERE row_num = 1
ORDER BY parental_education;

/*
Result:

Parental Education | Student ID | Final Exam Score
-------------------|------------|-----------------
Bachelors          | 239        | 100.00
High School        | 2          | 100.00
Masters            | 33         | 100.00
None               | 22         | 100.00
PhD                | 466        | 100.00

Conclusion:
The ROW_NUMBER() window function was used to identify
the highest-performing student within each parental
education group.

This approach demonstrates how window functions can be
used to select top records within separate categories.
*/
