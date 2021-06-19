-- 문제 : 2104년부터 2019년까지 입사한 사원들 대상으로 부서별 인원수(count() 함수 사용)을 얻어서 
-- employees 테이블의 모든 컬럼 정보 및 인원수가 많은 순서대로 정렬하기

SELECT
  department_id AS '부서번호',
  COUNT(employee_id) AS '부서별 인원수'
FROM employees e1
WHERE 1=1
	AND hire_year >= '2014' AND hire_year < '2020'
GROUP BY
	department_id
ORDER BY
	count(employee_id)DESC;
