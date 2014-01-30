program make_data
  implicit none
  integer :: int_test = 12
  real :: flt_test = 11.11
  double precision :: dbl_test = 12.3456

  open (unit=10, file='./data/test_data_formatted.dat', form = 'formatted')
  write(10,*) int_test,flt_test
  close(10)

  open (unit=10, file='./data/test_data_binary.dat', form = 'unformatted')
  write(10) dbl_test
  close(10)


  write(*,*)'Data_written'
end program make_data
