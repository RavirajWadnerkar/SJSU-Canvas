INSERT IGNORE INTO students (student_id, first_name, last_name, user_role, email, password) 
VALUES 
(401, 'Alex', 'Johnson', 'student', 'alex.johnson@example.com', 'alex@johnson'),
(402, 'Emma', 'Smith', 'student', 'emma.smith@example.com', 'emma@smith'),
(406, 'Isabella', 'Garcia', 'student', 'isabella.garcia@example.com', 'isabella@garcia'),
(408, 'Ava', 'Davis', 'student', 'ava.davis@example.com', 'ava@davis'),
(411, 'Noah', 'Taylor', 'student', 'noah.taylor@example.com', 'noah@taylor'),
(412, 'Charlotte', 'Moore', 'student', 'charlotte.moore@example.com', 'charlotte@moore'),
(416, 'Olivia', 'White', 'student', 'olivia.white@example.com', 'olivia@white'),
(418, 'Lucas', 'Martin', 'student', 'lucas.martin@example.com', 'lucas@martin'),
(721, 'Neel', 'Desai', 'student', 'neel.desai@gm.com', '1234'),
(722, 'Samarth', 'Sharma', 'student', 'ss@hm.com', '1234');

-- creating course enrollment 
INSERT INTO enrollment (e_id, course_id, student_id, semester, date) 
VALUES 
(1, 106, 401, 'Spring 24', '2024-01-01'),
(2, 106, 402, 'Spring 24', '2024-01-01'),
(3, 106, 406, 'Spring 24', '2024-01-01'),
(4, 106, 408, 'Spring 24', '2024-01-01'),
(5, 106, 411, 'Spring 24', '2024-01-01'),
(6, 106, 412, 'Spring 24', '2024-01-01'),
(7, 106, 416, 'Spring 24', '2024-01-01'),
(8, 106, 418, 'Spring 24', '2024-01-01'),
(9, 107, 401, 'Spring 24', '2024-01-01'),
(10, 107, 402, 'Spring 24', '2024-01-01'),
(11, 107, 406, 'Spring 24', '2024-01-01'),
(12, 107, 408, 'Spring 24', '2024-01-01'),
(13, 107, 411, 'Spring 24', '2024-01-01'),
(14, 107, 412, 'Spring 24', '2024-01-01'),
(15, 107, 416, 'Spring 24', '2024-01-01'),
(16, 107, 418, 'Spring 24', '2024-01-01'),
(17, 108, 401, 'Spring 24', '2024-01-01'),
(18, 108, 402, 'Spring 24', '2024-01-01'),
(19, 108, 406, 'Spring 24', '2024-01-01'),
(20, 108, 408, 'Spring 24', '2024-01-01'),
(21, 108, 411, 'Spring 24', '2024-01-01'),
(22, 108, 412, 'Spring 24', '2024-01-01'),
(23, 108, 416, 'Spring 24', '2024-01-01'),
(24, 108, 418, 'Spring 24', '2024-01-01');

INSERT INTO enrollment (e_id, course_id, student_id, semester, date) 
VALUES 
(25, 105, 401, 'Fall 23', '2023-09-01'),
(26, 105, 402, 'Fall 23', '2023-09-01'),
(27, 105, 406, 'Fall 23', '2023-09-01'),
(28, 105, 408, 'Fall 23', '2023-09-01'),
(29, 105, 411, 'Fall 23', '2023-09-01'),
(30, 105, 412, 'Fall 23', '2023-09-01'),
(31, 105, 416, 'Fall 23', '2023-09-01'),
(32, 105, 418, 'Fall 23', '2023-09-01'),
(33, 105, 721, 'Fall 23', '2023-09-01'),
(34, 105, 722, 'Fall 23', '2023-09-01');


INSERT INTO enrollment (e_id, course_id, student_id, semester, date) 
VALUES 
(35, 106, 721, 'Spring 24', '2024-01-01'),
(36, 106, 722, 'Spring 24', '2024-01-01'),
(37, 107, 721, 'Spring 24', '2024-01-01'),
(38, 107, 722, 'Spring 24', '2024-01-01'),
(39, 108, 721, 'Spring 24', '2024-01-01'),
(40, 108, 722, 'Spring 24', '2024-01-01');


