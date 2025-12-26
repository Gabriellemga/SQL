

DECLARE @I INT;
SET @I = 1;

WHILE @I <= 100
BEGIN
 PRINT @I;
 SET @I = @I + 1

END;

-----

DECLARE @I INT;
SET @I = 10;
WHILE @I >= 1
   BEGIN
     PRINT @I;
     SET @I = @I - 1;
   END;