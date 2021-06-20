-- PRIMARY KEY : (1) PRIMARY KEY 로 잡힌 컬럼은 unique여야 한다.
--					  (2) 해당 컬럼은 index로 잡힌다.

CREATE TABLE `users` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '회원번호',
	`email` VARCHAR(100) NOT NULL COMMENT '회원 이메일' COLLATE 'utf8mb4_unicode_ci',
	`mobile_phone` CHAR(11) NOT NULL COMMENT '회원 모바일 번호' COLLATE 'utf8mb4_unicode_ci',
	`regist_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '회원 가입 날짜',
	PRIMARY KEY (`id`) USING BTREE
)
COMMENT='회원 테이블'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;


INSERT INTO `users` (`email`, `mobile_phone`)
VALUES ('sdke@dfg.com', '01012345678'); 

INSERT INTO `users` (`email`, `mobile_phone`)
VALUES ('jgfe@dfg.com', '01034563522');

INSERT INTO `users` (`email`, `mobile_phone`, `gender_id`)
VALUES ('jgfe3@df5g.com', '01034563575', 1);

INSERT INTO `users` (`email`, `mobile_phone`, `gender_id`)
VALUES ('jgfet3@ddrfg.com', '01034563553', 2);

INSERT INTO `users` (`email`, `mobile_phone`, `gender_id`)
VALUES ('jgfe5@d22fg.com', '01034563526', 1);

SELECT id, email, CONCAT(SUBSTRING(mobile_phone,1,3),'-', SUBSTRING(mobile_phone,4,4), '-', SUBSTRING(mobile_phone,8,4)) AS mobile_phone FROM

SELECT AUTO_INCREMENT FROM information_schema.`tables` WHERE TABLE_schema = 'shoppingmall' AND `table_name` = 'users';

-- 테이블 컬럼 위치 변경 스크립트

ALTER TABLE `users`
	CHANGE COLUMN `birth_date` `birth_date` DATE NULL DEFAULT NULL COMMENT '회원 출생' AFTER `mobile_phone`;
	
	

