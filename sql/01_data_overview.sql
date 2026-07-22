SELECT
    COUNT(*) AS total_students,
    ROUND(AVG(final_exam_score), 2) AS average_exam_score,
    MIN(final_exam_score) AS minimum_exam_score,
    MAX(final_exam_score) AS maximum_exam_score,
    ROUND(AVG(attendance_percent), 2) AS average_attendance,
    ROUND(AVG(study_time_hours), 2) AS average_study_time
FROM students;
