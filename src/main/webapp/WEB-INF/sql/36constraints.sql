-- constraints(제약)

-- NOT NULL : NULL이면 안됨

CREATE TABLE MyTable10 (
    col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL
);

DESC MyTable10;

INSERT INTO MyTable10 (col1, col2) VALUES ('a', 'b'); -- 성공
INSERT INTO MyTable10 (col2) VALUES ('c'); -- 성공
INSERT INTO MyTable10 (col1) VALUES ('d'); -- 실패

SELECT * FROM MyTable10;

CREATE TABLE MyTable11 (
  col1 INT,
  col2 INT NOT NULL
);

INSERT INTO MyTable11 (col1, col2) VALUES (3, 4); -- 성공
INSERT INTO MyTable11 (col2) VALUES (5); -- 성공
INSERT INTO MyTable11 (col1) VALUES (6); -- 실패

SELECT * FROM MyTable11;


