subroutine say_hello(num)
  print *, "hello"
  num = 4           ! output (there can be many)
end subroutine say_hello

program test
  implicit none
  integer :: toset
  call say_hello(toset)
  print *, toset
end program test
