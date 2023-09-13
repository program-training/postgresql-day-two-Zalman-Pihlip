CREATE TABLE University.StudyGroup(
    StudyGroup_id SERIAL PRIMARY KEY,
    StudyGroup_name TEXT,
);
INSERT INTO University.StudyGroup(StudyGroup_name)
VALUES('Math'),('Physics');
CREATE TABLE University.StudentInStudyGroup(
    StudentInStudyGroup_id SERIAL PRIMARY KEY,
    StudyGroup_id INT,
    FOREIGN KEY (StudyGroup_id) REFERENCES University.StudyGroup (StudyGroup_id),
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES University.Students (student_id) 
);
