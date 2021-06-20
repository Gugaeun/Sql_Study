-- sql table 조인(join) 실습

SELECT * FROM `users`;

SELECT * FROM `code_gender`;


-- users 테이블과 code_gender 테이블을 join 하여 회원들의 성별을 한글로 표시하는 쿼리 작성
-- inner join(내부 조인)
SELECT 
		u1.id, 
		u1.email, 
		u1.mobile_phone, 
		u1.birth_date, 
		u1.regist_date, 
		u1.gender_id, 
		cg1.code_name 
FROM `users` AS u1 
INNER JOIN `code_gender` AS cg1 ON u1.gender_id = cg1.id 
-- AND cg1.`code` = 'F'
WHERE birth_date < '2018';
-------------------------------------------------------------------
SELECT 
	d1.code_name, e1.*
FROM 
	employees e1
JOIN 
	departments d1 ON d1.`code` = e1.department_id;

-- outer join(외부 조인)
-- -> left 외부 조인,city
-- -> right  외부 조인