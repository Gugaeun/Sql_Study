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
	ON co1.country_id = cil.country_id
	
DESC sakila.country
DESC sakila.address;

	
SELECT 
	t1.*, t2.*
FROM `testdb2`.table1 t1
JOIN
	`testdb2`.table2 t2
	ON t1.id1 = t2.id2;
	
SELECT * FROM `testdb2`.table1 t1;
SELECT * FROM `testdb2`.table2 t2;

---------------------------------------------------------------------------------------
-- outer join(외부 조인)
-- -> left 외부 조인
SELECT 
	t1.*
FROM 
	`testdb2`.table1 t1
LEFT JOIN 
	`testdb2`.table2 t2
	ON t1.id1 = t2.id2;
	
-- table1, table2 left join

SELECT 
	t1.id1,
	t1.date1,
	t2.id2,
	t2.date1
FROM 
	`testdb2`.table1 t1
LEFT JOIN 
	`testdb2`.table2 t2
	ON t1.id1 = t2.id2
WHERE
	t1.id1 IS NOT NULL;

-- -> right 외부 조인
SELECT 
	t1.*, t2.*
FROM 
	`testdb2`.table1 t1
RIGHT JOIN 
	`testdb2`.table2 t2
	ON t1.id1 = t2.id2;
	
---------------------------------------------------------------------
SELECT * FROM world.city;
SELECT * FROM world.country;

SELECT
	ci1.*, co1.*
FROM world.city ci1
LEFT JOIN
	world.country co1
	ON ci1.`name` = co1.`name`
	
SELECT * FROM world.city WHERE `name` LIKE '%seoul%';
SELECT * FROM world.country WHERE `name` LIKE '%korea';

------------------------------------------------------------------------

SELECT * FROM sakila.film WHERE description LIKE '%china%'

-- film 테이블에서 중국을 배경으로 한 영화를 찾아 제목을 'China_Movie' 로 변경

UPDATE sakila.film
SET title = 'China_Movie'
WHERE 
	description Like '%china%';
	
------------------------------------------------------------------------
-- film 테이블에서 영화 등급 종류(distinct 사용) 를 표시하는 컬럼

SELECT
	DISTINCT rating
FROM
	sakila.film;
	
-- film, film_category, category 테이블을 film_id와 category_id 를 기준으로 결해서 결과를 
-- film_id로 오름차순 정렬(film_id, title, category_id, name)

SELECT 
	f1.film_id,
	f1.title,
	fc1.category_id,
	c1.`name`
FROM
	film f1
INNER JOIN
	film_category fc1
	ON fc1.film_id = f1.film_id
INNER JOIN
	category c1
	ON c1.category_id = fc1.category_id
-- ORDER BY 
-- 	f1.film_id = ASC;

------------------------------------------------------------------------
-- rental, inventory 테이블의 inventory_id를 기준으로 left join 쿼리 작성

SELECT
	r1.*,
	i1.*
FROM
	rental r1
LEFT JOIN
	inventory i1
	ON r1.inventory_id = i1.inventory_id;
------------------------------------------------------------------------
-- address 테이블과 city 테이블을 city_id를 기준으로 결합해보자(Left join, Right join)
-- (address, address2, city, city_id 컬럼의 데이터를 선택해서, 도시명과 주소를 한 테이블에 보이게 하기)

SELECT a.address, a.address2, b.city, c1.city_id;
FROM
	address a
LEFT JOIN
	city b
	ON a.city_id = b.city_id;
--
SELECT a.address, a.address2, b.city, c1.city_id;
FROM
	address a
RIGHT JOIN
	city b
	ON a.city_id = b.city_id
WHERE a.address2 IS NOT NULL
;

