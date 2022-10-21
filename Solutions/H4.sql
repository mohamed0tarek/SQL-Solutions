DELIMITER //
CREATE PROCEDURE star() 
BEGIN
declare n int default 20;
WHILE N>0 DO
        SELECT REPEAT('* ', N);
        SET N = N - 1;
    END WHILE;
END //
call star()
