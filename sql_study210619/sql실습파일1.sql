CREATE TABLE `employees` (
	`department_id` INT(11) NOT NULL COMMENT '부서번호',
	`employee_id` INT(11) NOT NULL COMMENT '사원번호',
	`hire_date` CHAR(10) NOT NULL DEFAULT '' COMMENT '입사날짜(년-월-일)' COLLATE 'utf8mb4_0900_ai_ci',
	`hire_year` CHAR(4) NOT NULL DEFAULT '' COMMENT '입사연도' COLLATE 'utf8mb4_0900_ai_ci',
	`salary_amount` INT(11) NULL DEFAULT NULL COMMENT '월급',
	`job_id` VARCHAR(10) NULL DEFAULT NULL COMMENT '직무코드' COLLATE 'utf8mb4_0900_ai_ci'
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;


INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (50, 120, '2019-03-05', '2019', 300, 'SATB');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (50, 121, '2020-03-04', '2020', 400, 'SAGA');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (50, 122, '2020-05-04', '2020', 200, 'SATA');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (50, 123, '2018-02-04', '2018', 180, 'SATC');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (50, 124, '2017-11-04', '2017', 250, 'MKCA');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (50, 125, '2018-08-23', '2018', 280, 'MKCB');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (50, 126, '2017-12-09', '2017', 450, 'SAGB');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (50, 127, '2013-12-09', '2013', 500, 'SACB');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (50, 128, '2014-12-09', '2014', 600, 'MKCB');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (80, 130, '2015-12-09', '2015', 550, 'MKGA');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (80, 131, '2016-12-09', '2016', 420, 'SACB');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (80, 132, '2017-09-09', '2017', 370, 'SATA');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (80, 133, '2018-12-09', '2018', 380, 'SATC');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (80, 134, '2019-12-09', '2019', 386, 'MKTB');
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (80, 135, '2021-01-21', '2021', 264, NULL);
INSERT INTO `employees` (`department_id`, `employee_id`, `hire_date`, `hire_year`, `salary_amount`, `job_id`) VALUES (80, 136, '2018-05-13', '2018', 235, 'SATC');
