DELIMITER //
CREATE PROCEDURE star() 
BEGIN
declare n int default 1;
WHILE N<21 DO
        SELECT REPEAT('* ', N);
        SET N = N + 1;
    END WHILE;
END //
call star()
