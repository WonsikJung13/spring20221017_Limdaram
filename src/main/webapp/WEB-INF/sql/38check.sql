-- CHECK : 조건에 맞는 데이터만 입력 가능

CREATE TABLE MyTable14(
    col1 INT,
    col2 INT,
    CHECK (col2 >= 0)
);
INSERT INTO MyTable14 (col1, col2) VALUES (1, 2);
SELECT * FROM MyTable14;

INSERT INTO MyTable14 (col1, col2) VALUES (-1, 2);
SELECT * FROM MyTable14;

INSERT INTO MyTable14 (col1, col2) VALUES (1, -2);
-- col2는 0보다 크거나 같아야 하기 때문에 -2는 실패