USE mydb2;
-- 학생 Table
-- id, 이름, 나이, 성별

CREATE TABLE Student (
  id INT PRIMARY KEY AUTO_INCREMENT, -- primary key
  name VARCHAR(255),
  age int,
  gender VARCHAR(1)
);

INSERT INTO Student (id, name, age, gender) VALUES (1, 'Lim', 26, 'F');
INSERT INTO Student (id, name, age, gender) VALUES (2, 'HONG', 25, 'M');

INSERT INTO Student (name, age, gender) VALUES ('KIM', 50, 'F'); -- id 자동입력

SELECT * FROM Student;

DELETE FROM Student WHERE id = 2;
DELETE FROM Student WHERE id = 3;

INSERT INTO Student (name, age, gender) VALUES ('HONG', 25, 'M');
INSERT INTO Student (name, age, gender) VALUES ('LEE', 50, 'M');

