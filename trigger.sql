CREATE TABLE trigger_test(
	message VARCHAR(100)
);

-- use command line client
/*
DELIMITER $$
CREATE 
	TRIGGER my_trigger BEFORE /AFTER INSERT/UPDATE/DELETE
	on employee
    FOR EACH ROW BEGIN
		INSERT INTO trigger_test VALUES ('added new employee');
	END$$
DELIMITER ;    
*/

insert into employee
VALUES(109, 'Oscar', 'Martinez', '1968-02-19', 'M', 69000, 106, 3);

select * from trigger_test;

/*
DELIMITER $$
CREATE 
	TRIGGER my_trigger2 BEFORE INSERT
	on employee
    FOR EACH ROW BEGIN
		INSERT INTO trigger_test VALUES (NEW.first_name);
	END$$
DELIMITER ;    
*/

insert into employee
VALUES(110, 'Kevin', 'Malone', '1978-02-19', 'M', 69000, 106, 3);

/*

DELIMITER $$
CREATE
    TRIGGER my_trigger1 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN
         IF NEW.sex = 'M' THEN
               INSERT INTO trigger_test VALUES('added male employee');
         ELSEIF NEW.sex = 'F' THEN
               INSERT INTO trigger_test VALUES('added female');
         ELSE
               INSERT INTO trigger_test VALUES('added other employee');
         END IF;
    END$$
DELIMITER ;
*/

INSERT INTO employee
VALUES(111, 'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106, 3);

select * from trigger_test;

drop TRIGGER my_trigger;
