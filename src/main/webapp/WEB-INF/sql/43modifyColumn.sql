-- MODIFY COLUMN : 컬럼 수정

DESC MyTable17;
seLECT * FROM MyTable17;
ALTER TABLE MyTable17 MODIFY COLUMN col1 INT NOT NULL;
INSERT INTO MyTable17 (col1, col6, col3, col4) VALUES (3, 3, 3, 3);
-- col2에 null 입력
ALTER TABLE MyTable17 MODIFY COLUMN col2 INT NOT NULL;
-- 이후 col2의 조건을 not null로 변경할려 했으나 위에서 이미 null을 입력했기 때문에 불가능하다
-- 변경하는 데이터의 타입, 제약사항을 이미 있는 데이터가 위반하고 있지 않는지 먼저 확인하자

ALTER TABLE MyTable17 MODIFY COLUMN col3 VARCHAR(255) UNIQUE;

