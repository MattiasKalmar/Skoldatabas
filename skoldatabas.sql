/*
#Mattias Produktägare
#Philip Scrummaster
#Utvecklingsteam 1: Elmedina, Jonathan
#Utvecklingsteam 2: Ludde, Kevin
*/

CREATE DATABASE Skoldatabas;
USE Skoldatabas;

-- Tabell för elever
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Authority INT DEFAULT 1,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    SSN INT UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabell för lärare
CREATE TABLE Teacher(
    TeacherID INT PRIMARY KEY AUTO_INCREMENT,
    Authority INT DEFAULT 2,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Subjects VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabell för rektor
CREATE TABLE Principal(
    PrincipalID INT PRIMARY KEY AUTO_INCREMENT,
    Authority INT DEFAULT 3,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabell för administratör
CREATE TABLE Administrator(
    AdminID INT PRIMARY KEY AUTO_INCREMENT,
    Authority INT DEFAULT 4,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabell för närvaro (kopplar lärare, elev och datum)
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY AUTO_INCREMENT,
    TeacherID INT NOT NULL,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    Date DATE NOT NULL,
    Present BOOLEAN NOT NULL,
    FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Tabell för kurser
CREATE TABLE Courses(
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(50) NOT NULL
);

-- Funktion för att lägga till användare, utifall man ska lägga till en användare så kräver det att den användaren som 
-- lägger till en ny användare är en administrator.
DELIMITER $$
CREATE PROCEDURE AddStudent (
    IN in_FirstName VARCHAR(50),
    IN in_LastName VARCHAR(50),
    IN in_SSN INT,
    IN in_Email VARCHAR(50),
    IN in_Authority INT
)
BEGIN
    IF in_Authority = 4 THEN INSERT INTO Students (FirstName, LastName, SSN, Email)
	VALUES (in_FirstName, in_LastName, in_SSN, in_Email) ELSE ;
END$$
DELIMITER ;

-- Funktion för att ta bort användare, utifall en användare ska ta bort en annan användare så kräver det att den användare som 
-- försöker ta bort vald användare är en administrator.
DELIMITER $$
CREATE PROCEDURE RemoveStudent()

END$$
DELIMITER ;

-- Funktion för att lista alla kurser
DELIMITER $$
CREATE PROCEDURE ListCourses()

END$$
DELIMITER ;