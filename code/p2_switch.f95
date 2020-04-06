PROGRAM switchcheck
  INTEGER :: x = 0
  SELECT CASE (x)
    CASE (0)
        print*, "this will print" 
    CASE (-1)
        print*, "this will not print" 
    CASE (1:)
        print*, "this will not print" 
    END SELECT
END PROGRAM switchcheck
