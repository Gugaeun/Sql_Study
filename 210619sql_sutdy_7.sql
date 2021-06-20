-- 문제 : 2104년부터 2019년까지 입사한 사원들 대상으로 부서별 인원수(count() 함수 사용)을 얻어서 
-- employees 테이블의 모든 컬럼 정보 및 인원수가 많은 순서대로 정렬하기

SELECT
  department_id AS '부서번호',
  COUNT(employee_id) AS '부서별 인원수'
FROM employees e1
WHERE 1=1
	AND hire_year >= '2014' AND hire_year < '2020'employees
GROUP BY
	department_id
ORDER BY
	count(employee_id)DESC;
-----------------------------------------------------------------------------

SELECT * FROM employees WHERE employee_id IN (134, 150) OR salary_amount > 380; 

-------------------------------------------------------------------------------

-- case when 구문

SELECT case when department_id = 50 then '영업부',
				when department_id = 80 then '회계감사부서',
				ELSE '듣보잡부서'
		 END AS `부서명`,
		 employee_id,
		 salary_amount
FROM employees
LIMIT 1, 2;

-- insert select 구문

INSERT INTO employees(department_id, employee_id, hire_date, hire_year,
				salary_amount, job_id
} SELECT 70, 200, '2021-02-01', '2021', 300, 'ABDF';