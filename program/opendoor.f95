 ! this function is a quick checker to see if door code is valid----------------
 function check_door_code(code)
    integer, intent(in) :: code
    logical :: check_door_code
    integer :: solution
    ! this generates a random door code at compilation (not runtime random)
    solution = int(rand()*1000)
    check_door_code = code==solution
    return
 end function
 
 
 ! quick lil subroutine that sets three random ints ----------------------------
 subroutine make_codes(num_1, num_2, num_3)
  implicit none
  integer :: num_1, num_2, num_3
  num_1 = int(rand()*1000)
  num_2 = int(rand()*1000)
  num_3 = int(rand()*1000)
end subroutine make_codes
 
    
 ! main program ----------------------------------------------------------------
 program try_door
    implicit none
    ! declarations
    logical, external :: check_door_code
    integer, dimension(3) :: guesses
    integer :: guess_1
    integer :: guess_2
    integer :: guess_3
    integer :: upper
    integer :: i
    logical :: code_found
    
    ! trying three random guesses first to see if we get lucky
    call make_codes(guess_1, guess_2, guess_3)
    
    ! creating an array of the guesses for storage
    guesses = (/guess_1, guess_2, guess_3/)
    
    ! checking to see if any worked
    do i=1, 3
        if (check_door_code(guesses(i))) then
            print*, "guess ", i, "worked! code is", guesses(i)
        end if
    end do
    
    ! brute force if the three guesses did not work
    upper = 1000
    do i=1, upper
        if (check_door_code(i)) then
            print*, "brute force worked! code is ", i
            exit
        end if
    end do
    
    ! printing a failure message if neither worked
    if (i > 999) then
        print*, "no code found :("
    end if
 end program
 
