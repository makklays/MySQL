/* Simple syntax for function */
DROP FUNCTION IF EXISTS how_old;
CREATE FUNCTION how_old(ii INT) RETURNS VARCHAR(20)
BEGIN
  DECLARE i INT DEFAULT 33;

  IF (i > ii) THEN
    RETURN 'old';
  ELSE
    RETURN 'young';
  END IF;
END;

/* An example of syntax how to use the function */
SELECT how_old(40);
