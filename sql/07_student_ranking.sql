/*
=========================================================
Project: Student Performance Analysis
File: 07_student_ranking.sql

Description:
Ranks students based on their final exam scores using
the DENSE_RANK() window function.

Author: Izabella
Database: PostgreSQL
=========================================================
*/

SELECT
    student_id,
    final_exam_score,
    DENSE_RANK() OVER (
        ORDER BY final_exam_score DESC
    ) AS student_rank
FROM students
ORDER BY student_rank, student_id;

/*
Result:

The query assigns a rank to each student based on the
final exam score.

Students with the same score receive the same rank,
and the next rank is assigned without gaps.

Conclusion:
The DENSE_RANK() window function makes it easy to rank
students while correctly handling ties in exam scores.
This approach is useful for leaderboards and performance
analysis.
*/
