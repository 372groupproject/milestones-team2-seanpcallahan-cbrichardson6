 function add(a, b)
    integer :: add  ! this is the return
    integer :: a
    integer :: b
    add = a+b
    return
 end function
    
 program test
    implicit none
    integer :: add
    PRINT *,add(2,3)
 end program
