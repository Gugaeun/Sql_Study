SELECT * FROM employees;

SELECT 1 AS `col1`;

SELECT NOW() AS `현재 시간`;

--  sql 올림 함수  -> ceil()

SELECT CEIL(-1, 2);
SELECT CEILING(1, 7);


-- sql 내림 함수 -> floor()
SELECT FLOOR(1.2);
SELECT FLOOR(-1.2);

SELECT employee_id, hire_date, ceil(salary_amount) AS '월급(만원단위 올림)' FORM employees;

-- sql 반올림 함수 : round(숫자, 자릿수) : 자릿수를 기준으로 반올림
SELECT ROUND(10.5);  -- 11
SELECT ROUND(10.4); -- 10
SELECT ROUND(10.532);  -- 11
SELECT ROUND(10.532, 2); -- 10.53
SELECT ROUND(10.536, 2); -- 10.54

SELECT ABS(-10.43);	-- 10.43
SELECT ABS(10.43);	-- 10.43

-- truncate(숫자, 자릿수) : 자릿수를 기준으로 버림
SELECT TRUNCATE(10.53, 1); 	-- 10.5
SELECT TRUNCATE(10.56, 1);		-- 10.5

-- 사원들의 사원번호와 급혀를 가져오는데 급여를 11% 인상된 급여를 가져오며,
-- 소수점 이하는 올림값, 버림값, 반올림한 값을 모두 가져오기

SELECT employee_id AS `사원번호`
	, CEIL(salary_amount * 1.11) AS `올림값` 
	, FLOOR(salary_amount * 1.11) AS `버림값`
	, ROUND(salary_amount * 1.11) AS `반올림값` 
FROM 
	employees;

-- 제곱 
SELECT POW(10, 2);	-- 100
-- 나머지
SELECT MOD(10, 3);	-- 1
-- 최대값
SELECT GREATEST(10, 4, 20, 1);	-- 20
-- 최소값
SELECT LEAST(10, 4, 20, 1);	-- 1

-------------------------------------------------------------------------------
-- sql 문자열 함수

SELECT 'abc' AS `컬럼1`;
SELECT CONCAT('abc', 'def') AS `컬럼1`;

-- INSERT(문자열, 시작위치, 길이, 새로운 문자열)
SELECT INSERT('abc', 1, 3, 'ghi');
-- REPLACE(문자열, 기존 문자열, 새로운 문자열) 
SELECT REPLACE('hello world', 'world1', '하하호호');
-- left(문자열, 개수)
SELECT LEFT('hello', 2);
-- right(문자열, 개수)
SELECT RIGHT('hello', 2);
-- mid(문자열, 시작위치, 개수)
SELECT MID('hello', 2, 2);
-- substring(문자열, 시작위치, 개수)
SELECT SUBSTRING('hello', 2, 2);
-- lcase, lower -> 대문자를 소문자로
-- ucase, upper -> 소문자를 대문자로
-- reverse(문자열)
-- trim(문자열), rtrim(문자열), ltrim(문자열) -> 문자열 공백 삭제
-------------------------------------------------------------------------------
-- hire_date의 월과 일 문자열과 hire_year의 문자열을 더해서 새로운 컬럼
-- 새로운 컬림인 '입사년원일'과 '월급' 컬럼과 job_id의 오른쪽 2 길이의 문자열만 가져오는 쿼리 작성

SELECT concat(hire_year, '-', SUBSTRING(hire_date, 6, 5)) AS `입사년월일`
	, RIGHT(job_id, 2) AS job_id
 FROM employees;
--------------------------------------------------------------------------------
-- sql 집합 연산(UNION(합집합), UNION ALL(모든 합집합), MINUS(차집합), JOIN(교집합))

SELECT department_id, employee_id, salary_amount, job_id
FROM employees
WHERE employee_id IN(120, 121, 122)
UNION 
SELECT department_id, employee_id, salary_amount, job_id
FROM employees
WHERE employee_id IN(123, 124)
-- union all
UNION ALL
SELECT department_id, employee_id, salary_amount, job_id
FROM employees
WHERE employee_id IN(123, 124);
