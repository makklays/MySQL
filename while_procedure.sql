DROP PROCEDURE IF EXISTS while_procedure;
CREATE DEFINER = 'root'@'localhost'
PROCEDURE while_procedure()
BEGIN
    DECLARE i INT; 
    SET i = 1;

    WHILE i < 1000 DO
        INSERT INTO `table` SET `val` = i;
        SET i = i + 1;
    END WHILE;
END
