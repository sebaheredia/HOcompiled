program testsum
  implicit none

  integer, parameter :: n=200
  integer :: data(n), asum, i

  do i=1,200
    data(i) = i-100
  end do

  call sum_abs(data,n,asum)
  print*, 'sum=',asum
end program testsum 

!program f_call_c
!integer :: i=1, ierr
!double precision :: x=3.14159
!print *, "Fortran calling C, passing"
!print *, "i=",i,"x=",x
!ierr = cfun(i,x)
!end program f_call_c
