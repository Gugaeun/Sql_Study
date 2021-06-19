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

-- emplyees 테이블에서 job_id 가 NULL 이 아니며 평균 급여보다 급여가 높은 사원들 중에 사원 번호, 부서번호, 급여액, 입사연도 출력하는 쿼리(높은 순으로 출력)

SELECT department_id, employee_id, salary_amount, hire_year
FROM employees
WHERE 
	job_id IS NOT null
	AND salary_amount > (SELECT AVG(salary_amount) FROM employees)
ORDER BY
	employee_id DESC;
	
	
-- 서브쿼리로 sub table 생성
-- job id가 'SATA'인 사원들의 사원번호, 급여액을 서브쿼리로 작성

SELECT employee_id, salary_amount
FROM
	(SELECT
		*
	 FROM
	 	employees
	 WHERE job_id IN ('SATA')
	 ) e1
; 

-- 컬럼 열의 위치에 서브쿼리 작성(제한 조건으로 컬럼 항목에 select 사용 시 컬럼 및 데이터가 1개만 존재해야 한다.)
SELECT 
	(SELECT hire_year FROM employees WHERE employee_id IN (120)) AS `tcol1`,
	employee_id,
	salary_amount
FROM
	employees;
	
-- EXISTS와 서브 쿼리 같이  사용
SELECT 
	*
FROM employees
WHERE EXISTS (SELECT * FROM employees WHERE job_id IS NOT NULL 
				AND employee_id IN (120))
		AND department_id >= 0 AND department_id <= 80;


