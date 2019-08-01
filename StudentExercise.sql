--                         CREATE COHORT TABLE
-- CREATE TABLE Cohort (
--     Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--     CohortName VARCHAR(55) NOT NULL
-- );

--                         CREATE STUDENT TABLE
-- CREATE TABLE Student (
-- Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--     StudentName VARCHAR(55) NOT NULL,
--     CohortId INTEGER NOT NULL,
--     CONSTRAINT FK_Student_Cohort FOREIGN KEY (CohortId) REFERENCES Cohort(Id)
-- );

--                         CREATE INSTRUCTOR TABLE
-- CREATE TABLE Instructor (
--     Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--     InstructorName VARCHAR(55) NOT NULL,
--     CohortId INTEGER NOT NULL,
--     CONSTRAINT FK_Instructor_Cohort FOREIGN KEY (CohortId) REFERENCES Cohort(Id)
-- );

--                         CREATE EXERCISE TABLE
-- CREATE TABLE Exercise (
--     Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--     ExerciseName VARCHAR(55) NOT NULL,
--     InstructorId INTEGER NOT NULL,
--     CONSTRAINT FK_Exercise_Instructor FOREIGN KEY (InstructorId) REFERENCES Instructor(Id)
-- );

--                          CREATE STUDENT EXERCISES TABLE
-- CREATE TABLE StudentExercise (
--     Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--     StudentId INTEGER NOT NULL,
--     ExerciseId INTEGER NOT NULL,
--     CONSTRAINT FK_StudentExercise_Student FOREIGN KEY (StudentId) REFERENCES Student(Id),
--     CONSTRAINT FK_StudentExercise_Exercise FOREIGN KEY (ExerciseId) REFERENCES Exercise(Id)
-- );

                        -- INSERTING EXERCISE DATA
INSERT INTO Exercise (ExerciseName, InstructorId) VALUES ('SQL', 1);
INSERT INTO Exercise (ExerciseName, InstructorId) VALUES ('.Net Console App', 1);
INSERT INTO Exercise (ExerciseName, InstructorId) VALUES ('Brain Destoryer - SQL', 2);
INSERT INTO Exercise (ExerciseName, InstructorId) VALUES ('C# HappyLand', 3);
INSERT INTO Exercise (ExerciseName, InstructorId) VALUES ('Student Exercise Part 4', 4);
INSERT INTO Exercise (ExerciseName, InstructorId) VALUES ('idk dude build an api lol', 4);

                        -- INSERTING STUDENT DATA
INSERT INTO Student (StudentName, CohortId) VALUES ('Logan Palmer', 1);
INSERT INTO Student (StudentName, CohortId) VALUES ('JR Sigrah', 1);
INSERT INTO Student (StudentName, CohortId) VALUES ('Dan Storm', 1);
INSERT INTO Student (StudentName, CohortId) VALUES ('Joey Driscoll', 1);
INSERT INTO Student (StudentName, CohortId) VALUES ('Deep Patel', 1);

                        -- INSERTING INSTRUCTOR DATA
INSERT INTO Instructor (InstructorName, CohortId) VALUES ('Jisie David', 1);
INSERT INTO Instructor (InstructorName, CohortId) VALUES ('Adam Sheaffer', 1);
INSERT INTO Instructor (InstructorName, CohortId) VALUES ('Brenda Long', 2);
INSERT INTO Instructor (InstructorName, CohortId) VALUES ('Bryan Nilsen', 2);

                        -- INSERT COHORT DATA
INSERT INTO Cohort (CohortName) VALUES ('Cohort32');
INSERT INTO Cohort (CohortName) VALUES ('Cohort33');
INSERT INTO Cohort (CohortName) VALUES ('Cohort34');

                        -- INSERT STUDENT EXERCISE
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1,1)
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1,3)
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (2,5)
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (2,6)
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (3,1)
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (4,1)
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (4,1)
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (5,2)
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (5,4)

SELECT 