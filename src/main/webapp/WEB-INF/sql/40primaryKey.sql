-- PRIMARY KEY : NOT NULL, UNIQUE 조합

CREATE TABLE MyTable16 (
    col1 INT,
    col2 INT NOT NULL UNIQUE,
    col3 INT PRIMARY KEY
);
INSERT INTO MyTable16 (col1, col2, col3) VALUES (1, 1, 1);
SELECT * FROM MyTable16;

INSERT INTO MyTable16 (col1, col2, col3) VALUES (1, 2, 2);
SELECT * FROM MyTable16;

INSERT INTO MyTable16 (col1, col2, col3) VALUES (1, 2, 3);
-- col2가 unique 제약사항이 있기 때문에 실패

INSERT INTO MyTable16 (col1, col2, col3) VALUES (1, 3, 2);
-- col3가 primary key(unique) 제약사항이 있기 때문에 실패

INSERT INTO MyTable16 (col1, col2) VALUES (1, 4);
-- col3가 primary key(not null) 제약사항이 있기 때문에 실패

DESC MyTable16;