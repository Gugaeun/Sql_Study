-- table 에 데이터 삽입하기 실습

INSERT INTO testtable1(col1, col2) VALUES(5, '하하 5');

INSERT INTO 'testdb2'.'testtable1'('col1', 'col2') VALUES(4, '하하 4');
INSERT INTO 'testdb2'.'testtable1'('col1', 'col2') VALUES(5, '하하 5');
INSERT INTO 'testdb2'.'testtable1'('col1', 'col2') VALUES(6, 'dasf');
INSERT INTO 'testdb2'.'testtable1'('col1', 'col2') VALUES(6);
INSERT INTO 'testdb2'.'testtable1'('col1') VALUES('xzcv');
INSERT INTO 'testdb2'.'testtable1'('col2') VALUES(12, 'xzcv');
