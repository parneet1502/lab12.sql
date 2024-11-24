-- 1. Concatenate course_name and semester
SELECT CONCAT(course_name, ' - ', semester) AS course_semester
FROM courses;

-- 2. Find courses with lab sessions on Friday
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';

-- 3. List all assignments with a due date after the current date
SELECT * 
FROM assignments
WHERE due_date > DATE();

-- 4. Count assignments by status
SELECT status, COUNT(*) AS num_assignments
FROM assignments
GROUP BY status;

-- 5. Find the course with the longest course_name
SELECT course_name, LENGTH(course_name) AS name_length
FROM courses
ORDER BY name_length DESC
LIMIT 1;

-- 6. List all course names in uppercase
SELECT UPPER(course_name) AS upper_course_name
FROM courses;

-- 7. List titles of assignments due in September
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

-- 8. Find assignments with missing due dates
SELECT * 
FROM assignments
WHERE due_date IS NULL;