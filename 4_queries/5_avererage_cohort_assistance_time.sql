SELECT
  cohorts.name as cohort_name,
  AVG(completed_at - started_at) AS average_assistance_time
FROM
  cohorts
  JOIN students ON (cohort_id = cohorts.id)
  JOIN assistance_requests ON (students.id = student_id)
GROUP BY
  cohorts.name
ORDER BY
  average_assistance_time