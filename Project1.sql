-- Jorge Santana Final Project 05/7/2025
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(100),
    DOB DATE
);
CREATE TABLE Instructors (
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    LicenseNumber VARCHAR(30),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Specialization VARCHAR(50)
);
CREATE TABLE Course (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100),
    VarDescription TEXT,
    DurationHours INT,
    Fee DECIMAL(10, 2)
);
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    VarStatus VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);
CREATE TABLE Lesson (
    LessonID INT AUTO_INCREMENT PRIMARY KEY,
    InstructorID INT,
    StudentID INT,
    VarDate DATE,
    VarTime VARCHAR(8),
    LessonType VARCHAR(20),
    Location VARCHAR(100),
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
INSERT INTO Course (CourseID, Title, VarDescription, DurationHours, Fee) VALUES
(1, 'Beginner Driving', 'For new drivers', 40, 700.00),
(2, 'Advance Driving', 'Focus on city/highway driving', 15, 500.00),
(3, 'Road Test Prepreparation', 'Test simulation & tips', 10, 300.00),
(4, 'Defensive Driving Course', 'Teaches safe driving strategies', 6, 250.00),
(5, 'Commercial Driver License', 'All drivers have been required', 40, 800.00);

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate, VarStatus) VALUES
(1, 1, 1, '2025-05-01', 'Active'),
(2, 2, 2, '2025-01-17', 'Completed'),
(3, 3, 1, '2025-04-30', 'Pending'),
(4, 4, 3, '2025-04-23', 'Active'),
(5, 5, 4, '2025-05-03', 'Active');

INSERT INTO Instructors (InstructorID, FirstName, LastName, LicenseNumber, Phone, Email, Specialization) VALUES
(1, 'Susan', 'Rivera', 'LIC1234', '901-555-8881', 'susan@drive.com', 'Manual'),
(2, 'Pedro', 'Sanchez', 'LIC1233', '901-444-9991', 'sanchez@drive.com', 'Automatic'),
(3, 'Ada', 'Wong', 'LIC1235', '901-333-7771', 'Awong@drive.com', 'Manual & Auto'),
(4, 'Juan', 'Felipe', 'LIC1236', '901-222-6661', 'Jfelipe@drive.com', 'Automatic'),
(5, 'Mark', 'Hudson', 'LIC1237', '901-111-5551', 'mark@drive.com', 'Manual');

INSERT INTO Lessocoursecoursen (LessonID, InstructorID, StudentID, VarDate, VarTime, LessonType, Location) VALUES
(1, 1, 1, '2025-02-05', '6:00 PM', 'Theory', 'Zoom'),
(2, 2, 2, '2025-01-19', '1:00 PM', 'Practical', 'Parking Lot A'),
(3, 1, 3, '2025-10-24', '9:00 AM', 'Practical', 'Parking Lot B'),
(4, 3, 4, '2025-04-30', '11:00 AM', 'Practical', 'Parking Lot A'),
(5, 4, 5, '2025-05-06', '3:00 PM', 'Theory', 'Zoom');

INSERT INTO Students (StudentID, FirstName, LastName, Email, Phone, Address, DOB) VALUES
(1, 'Jorge', 'Santana', 'jorgeamaury01@hotmail.com', '901-551-1111', '123 Main St','1999-01-31'),
(2, 'Maria', 'Lopez', 'Mlopez02@gmail.com', '901-552-2222', '321 Park St','2000-02-28'),
(3, 'Mohammad', 'Kha', 'Mohammad21@hotmail.com', '901-553-3333', '213 Perez St','2001-03-31'),
(4, 'Joan', 'Ladaban', 'Jladaban@gmail.com', '901-554-4444', '300 Boulevrd St','1999-04-30'),
(5, 'Fatoumata', 'Bah', 'FatimaBah@hotmail.com', '901-555-5555', '201 Brooklyn Bridge St','2003-05-31');

SELECT * FROM Lesson;
SELECT * FROM Enrollments;
SELECT * FROM Instructors;
SELECT * FROM Students;
SELECT * FROM Course;
