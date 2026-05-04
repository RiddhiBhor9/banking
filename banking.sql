DROP TABLE IF EXISTS test;

CREATE TABLE test (
    age INT,
    job TEXT,
    marital TEXT,
    education TEXT,
    balance INT,
    housing TEXT,
    loan TEXT,
    contact TEXT,
    day INT,
    month TEXT,
    duration INT,
    campaign INT,
    pdays INT,
    previous INT,
    poutcome TEXT
);

--Basic Queries
--Get all records
SELECT * FROM test;

--Show only age, job, balance
SELECT age, job, balance FROM test;
--Find customers with balance > 1000
SELECT * FROM test
WHERE balance > 1000;

-- Filtering Queries
--Customers who are married
SELECT * FROM test
WHERE marital = 'married';

--Customers with loan = yes AND housing = yes
SELECT * FROM test
WHERE loan = 'yes' AND housing = 'yes';

-- Aggregation Queries
--Average balance
SELECT AVG(balance) AS avg_balance FROM test;

--Count total customers
SELECT COUNT(*) FROM test;

--Max and Min age
SELECT MAX(age), MIN(age) FROM test;

-- Group By Queries
--Count customers by job
SELECT job, COUNT(*) 
FROM test
GROUP BY job;
  
  --Average balance by education
SELECT education, AVG(balance)
FROM test
GROUP BY education;

-- Advanced Queries
--Top 5 customers with highest balance
SELECT * FROM test
ORDER BY balance DESC
LIMIT 5;

--Customers contacted in May
SELECT * FROM test
WHERE month = 'may';

--Customers with no previous contact
SELECT * FROM test
WHERE previous = 0;

-- Interview-Level Questions
--Which job has highest average balance?
SELECT job, AVG(balance) AS avg_bal
FROM test
GROUP BY job
ORDER BY avg_bal DESC
LIMIT 1;

--Count of customers by marital status
SELECT marital, COUNT(*)
FROM test
GROUP BY marital;