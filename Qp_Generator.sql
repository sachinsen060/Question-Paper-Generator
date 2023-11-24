CREATE DATABASE my_db;

CREATE TABLE question_store (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR(255) NOT NULL,
    subject VARCHAR(50) NOT NULL,
    topic VARCHAR(50) NOT NULL,
    difficulty VARCHAR(10) NOT NULL,
    marks INT NOT NULL
);

INSERT INTO question_store (question, subject, topic, difficulty, marks) VALUES
('What is the capital of France?', 'Geography', 'World Capitals', 'Easy', 3),
('Who wrote the play "Romeo and Juliet"?', 'Literature', 'Shakespeare', 'Medium', 4),
('In which year did World War II end?', 'History', 'World War II', 'Hard', 5),
('What is the chemical symbol for gold?', 'Chemistry', 'Elements', 'Easy', 2),
('Solve for x: 2x + 5 = 15', 'Mathematics', 'Algebra', 'Medium', 1),
('What is the powerhouse of the cell?', 'Biology', 'Cell Biology', 'Hard', 3),
-- Add more questions with varying difficulty levels and marks between 1 to 5
('Who discovered penicillin?', 'Medicine', 'Antibiotics', 'Easy', 4),
('What is the largest planet in our solar system?', 'Astronomy', 'Planets', 'Medium', 2),
('Which continent is known as the "Land of the Rising Sun"?', 'Geography', 'Continents', 'Hard', 5),
('What is the square root of 144?', 'Mathematics', 'Arithmetic', 'Easy', 1),
('Name the process by which plants make their own food.', 'Biology', 'Photosynthesis', 'Medium', 3),
('Who painted the Mona Lisa?', 'Art', 'Painting', 'Hard', 4);

INSERT INTO question_store (question, subject, topic, difficulty, marks) VALUES
('What is the purpose of the "main" function in C++?', 'Programming', 'C++', 'Easy', 2),
('Explain the difference between "compiler" and "interpreter."', 'Computer Science', 'Fundamentals', 'Medium', 3),
('What does HTML stand for?', 'Web Development', 'HTML', 'Hard', 4),
('What is the significance of the keyword "static" in Java?', 'Programming', 'Java', 'Easy', 2),
('Explain the concept of recursion in programming.', 'Computer Science', 'Algorithms', 'Medium', 3),
('What is the role of the operating system in a computer?', 'Computer Science', 'Operating Systems', 'Hard', 4),
('How does a binary search algorithm work?', 'Computer Science', 'Algorithms', 'Easy', 2),
('What is the purpose of the "git" version control system?', 'Programming', 'Version Control', 'Medium', 3),
('Explain the difference between TCP and UDP protocols.', 'Networking', 'Protocols', 'Hard', 4),
('What is the function of a DNS server in computer networks?', 'Networking', 'DNS', 'Easy', 2),
('What is the difference between a stack and a queue?', 'Data Structures', 'Stacks and Queues', 'Medium', 3),
('Explain the concept of object-oriented programming (OOP).', 'Programming', 'OOP', 'Hard', 4),
('What is the purpose of the "if-else" statement in programming?', 'Programming', 'Control Flow', 'Easy', 2),
('Describe the importance of cybersecurity in modern computing.', 'Computer Science', 'Cybersecurity', 'Medium', 3),
('Explain the difference between HTTP and HTTPS.', 'Web Development', 'HTTP/HTTPS', 'Hard', 4),
('What is the role of a database management system (DBMS)?', 'Database Management', 'DBMS', 'Easy', 2),
('How does a bubble sort algorithm work?', 'Computer Science', 'Sorting Algorithms', 'Medium', 3),
('Explain the concept of "Big O" notation in algorithm analysis.', 'Computer Science', 'Algorithm Analysis', 'Hard', 4);
