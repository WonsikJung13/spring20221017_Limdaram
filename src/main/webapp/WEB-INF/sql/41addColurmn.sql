-- alter table : 테이블 수정
-- add column : 컬럼 추가

CREATE TABLE MyTable17 (
    col1 INT,
    col2 INT
);
ALTER TABLE MyTable17 ADD COLUMN col3 INT;

ALTER TABLE MyTable17 ADD COLUMN col4 INT NOT NULL UNIQUE DEFAULT 0;

-- 입력 위치 정하기
ALTER TABLE MyTable17 ADD COLUMN col5 INT FIRST; -- 첫번째에 넣기
ALTER TABLE MyTable17 ADD COLUMN col6 INT AFTER col2; -- col2 뒤에 넣기
ALTER TABLE MyTable17 ADD COLUMN col7 VARCHAR(255) NOT NULL UNIQUE DEFAULT 'empty';

SELECT * FROM MyTable17;
DESC MyTable17;