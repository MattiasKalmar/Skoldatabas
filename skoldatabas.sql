/*
#Mattias Produktägare
#Philip Scrummaster
#Utvecklingsteam 1: Elmedina, Jonathan
#Utvecklingsteam 2: Ludde, Kevin
*/

CREATE DATABASE Skoldatabas;
USE Skoldatabas;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Authority INT DEFAULT 1,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    BirthDate DATE NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE Teacher(
    TeacherID INT PRIMARY KEY AUTO_INCREMENT,
    Authority INT DEFAULT 2,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Subjects VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE Principal(
    PrincipalID INT PRIMARY KEY AUTO_INCREMENT,
    Authority INT DEFAULT 3,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE Administrator(
    AdminID INT PRIMARY KEY AUTO_INCREMENT,
    Authority INT DEFAULT 4,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE Courses(
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(50) NOT NULL,
    
)

-- Funktion för att lägga till användare, utifall man ska lägga till en användare så kräver det att den användaren som 
-- lägger till en ny användare har högre behörighet än användaren som den lägger till.
DELIMITER $$
CREATE PROCEDURE AddUser()

END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE RemoveUser()

END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE AddUser()

END$$
DELIMITER ;