-- 서브 쿼리(sub query) 작성
-- select 문이 nested 하게 2개 이상의 쿼리를 서브쿼리

-- employee 테이블에서 현배 받는 급여와 푱균보다 맣이 받는 사원들의 사원번호,
-- 급여액을 가죵는 쿼리
SELECT employee_id, salary_amount
FROM employees
WHERE 
	salary_amount > (SELECT AVG(salary_amount) FROM employees);
	
-- employee 테이블에서 입사년월일이 2016년 이후에 입사한 사원들의 사원번호와 job_id 값을 가져오는 쿼리(subquery)

SELECT employee_id, job_id
FROM employees
WHERE
	hire_year >= 2016;

-- 서브 쿼리 응용식 	
SELECT employee_id, job_id
FROM employees
WHERE
	hire_year IN (SELECT hire_year FROM employees WHERE hire_year >= 2016)
	OR employee_id IN (SELECT employee_id FROM employees WHERE hire_year >= 2016);
-----------------------------------------------------------------------------------	
SELECT employee_id, job_id
FROM employees
WHERE (department_id, job_id) IN (SELECT 50, 'SATA');