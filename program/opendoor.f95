 function check_door_code(code)
    integer, intent(in) :: code
    logical :: check_door_code
    integer :: solution
    solution = 638
    check_door_code = code==solution
    return
 end function
    
 program try_door
    implicit none
    logical, external :: check_door_code
    integer :: upper
    integer :: i
    logical :: code_found
    upper = 1000
    DO i=1, upper
        IF (check_door_code(i)) THEN
            print*, "code is ", i
            exit
        END IF
    END DO
    
    IF (i > 999) THEN
        print*, "no code found"
    END IF
 end program
