USE w3schools;

DROP TABLE Bank;
CREATE TABLE Bank(
  customerId int PRIMARY KEY,
  balance int
);

INSERT INTO Bank (customerId, balance) VALUES (1, 10000), (2, 50000);

SELECT * FROM Bank;
-- 송금 업무
-- 1번 고객이 2번 고객에게 5000원 송금
-- 1번은 5000원 마이너스, 2번은 5000원 플러스 (동시실행)
UPDATE Bank SET balance = balance - 5000 WHERE customerId = 1;
UPDATE Bank SET balance = balance + 5000 WHERE customerId = 2;

-- TRANSACTION : 하나의 업무 (여러 update, delete, insert, select 쿼리의 묶음)

-- COMMIT : 진행된 내용을 DB에 반영함
-- ROLLBACK : 진행되고 있던 내용을 모두 원복함

-- AUTO COMMIT 여부 확인
SHOW VARIABLES WHERE Variable_name = 'autocommit'; -- 바로 반영
-- 바로 반영되면 하나로 묶어서 사용할 수가 없기 때문에 autocommit을 false로 만들자

-- AUTO COMMIT -> disable
SET autocommit = 0;
-- AUTO COMMIT -> enable
SET autocommit = 1;



-- 송금업무
-- 2번 고객이 1번 고객에게 5000원 송금함
UPDATE Bank SET balance = balance - 5000 WHERE customerId = 2;
SELECT * FROM Bank;

-- 1번 고객이 2번 고객에게 5000원 송금함
UPDATE Bank SET balance = balance + 5000 WHERE customerId = 1;

ROLLBACK;

COMMIT;