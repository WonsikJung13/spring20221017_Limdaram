DESC Student;

-- 학생 테이블
-- id, 이름, 나이, 성별

-- 연락처 테이블 (연락처1, 연락쳐2, 연락처3)
-- 컬럼들 : studentId, 연락처

-- 예) 학생 테이블의 행
-- 1, 'Lim', 26, 'F'
-- 2, 'Lim a', 23, 'M'
-- 연락처 테이블의 행
-- 1, '010-1234-1234'
-- 1, '010-9876-9876'
-- 2, '010-1111-1111'
-- 2, '010-9876-9876' -- 연락처가 겹칠수도 있다

-- 두개의 컬럼을 묶어서 Primary key
CREATE TABLE Contact (
  studentId INT,
  contact VARCHAR(255),
  PRIMARY KEY (studentId, contact)
);

DESC Contact;
DROP TABLE Contact;
-- 인위적인 키
CREATE TABLE Contact (
  id INT PRIMARY KEY AUTO_INCREMENT,
  studentId INT,
  contact VARCHAR(255)
);
DESC Contact;
DROP TABLE Contact;
-- FOREIGN KEY : 한 컬럼의 값이 다른 테이블의 컬럼을 참조함
-- 외래키, 참조키, FK

-- FOREIGN KEY 제약사항 추가
CREATE TABLE Contact (
  id INT PRIMARY KEY AUTO_INCREMENT,
  studentId INT,
  contact VARCHAR(255),
  FOREIGN KEY (studentId) REFERENCES Student(id) -- 제약사항 추가
);
SELECT * FROM Student;
DESC Contact;
INSERT INTO Contact (studentId, contact) VALUES (1, '010-9999-9999');
SELECT * FROM Contact;
INSERT INTO Contact (studentId, contact ) VALUES (4, '010-8888-8888');
INSERT INTO Contact (studentId, contact ) VALUES (4, '010-7777-7777');
INSERT INTO Contact (studentId, contact ) VALUES (5, '010-6666-6666');
INSERT INTO Contact (studentId, contact ) VALUES (NULL, '010-8888-8888'); -- NULL 가능 (NOT NULL 제약사항 추가 안했기때문이다)
INSERT INTO Contact (studentId, contact ) VALUES (3, '010-8888-8888');

SELECT * FROM Contact;

-- 부모테이블의 레코드가 삭제될 경우
SELECT * FROM Student;
DELETE FROM Student WHERE id=4; -- 삭제 안됨 (먼저 삭제될 수 없음)

-- 자식테이블 레코드 삭제를 먼저 해야함
DELETE FROM Contact WHERE studentID = 4;
DELETE FROM Student WHERE id=4; -- 삭제 성공
SELECT * FROM Student;


