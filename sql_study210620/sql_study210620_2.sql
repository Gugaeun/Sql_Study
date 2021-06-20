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
	
--------------------------------------------------------------------

-- country 코드 값이 'ABW' 를 가진 나라의 도시 이름과 사용하는 언어 정보를 가져오는 쿼리

SELECT
	co1.`Name` AS '나라이름',
	ci1.`Name` AS '도시이름',
--	cl1.`Language` AS '사용언어'
FROM country co1
INNER JOIN 
	city ci1 
	ON ci1.CountryCode = co1.`Code`
-- INNER JOIN
--	countrylanguage cl1
--	ON cl1.CountryCode = co1.`Code`
WHERE 
	co1.`Code` IN ('AFG');

-------------------------------------------------------------------------------------
	
-- saklia DB에서 모든 주소 정보와 도시 정보, 나라 정보를 표시하는 쿼리를 작성

SELECT
	*
FROM 
	sakila.address ad1
INNER JOIN
	sakila.city ci1 
	ON ci1.city_id = ad1.city_id
INNER JOIN
	sakila.country co1
	ON co1.country_id = cil.country_id;
	
--------------------------------------------------------------------------------------



-- outer join(외부 조인)
-- -> left 외부 조인, right 외부 조인