-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

SELECT DepartmentName, COUNT(*) AS TotalEnrolments
FROM 
Course JOIN Enrolment ON Course.CourseId = Enrolment.CourseId 
JOIN Department ON Course.DepartmentId = Department.DepartmentId
GROUP BY Department.DepartmentName;