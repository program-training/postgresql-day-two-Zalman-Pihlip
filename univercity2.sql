CREATE TABLE University.Enrollments (
	enrollment_id serial PRIMARY KEY,
	student_id INT, 
	FOREIGN KEY (student_id) REFERENCES University.Students(student_id),
	course_id INT,
	FOREIGN KEY (course_id)  REFERENCES University.Courses (course_id));
INSERT INTO University.Enrollments(student_id,course_id)
VALUES('1','1'),
('2','1'),
('3','2'),
('4','3'),
('1','3');
SELECT * FROM University.Enrollments;
ALTER TABLE university.Enrollments 
ADD CONSTRAINT uniqueRow UNIQUE(student_id,course_id)


CREATE TABLE University.TeacherCourse(
teacherCourse_id serial PRIMARY KEY,
	course_id INT,
	FOREIGN KEY (course_id) REFERENCES University.Courses(course_id),
	teacher_id INT,
	FOREIGN KEY (teacher_id) REFERENCES University.Teachers (teacher_id)
);
SELECT * FROM University.TeacherCourse;



CREATE TABLE University.Grades(
	grade_id serial PRIMARY KEY,
	grade INT
	CHECK (grade <= 100),
    enrollment_id INT,
    FOREIGN KEY (enrollment_id) REFERENCES University.Enrollment ( enrollment_id)
);
INSERT INTO University.Grades(grade,student_id,course_id)
VALUES('67','1'),('98','2',),('100','3'),('95','4'),('89','5');
SELECT * FROM University.Grades;
