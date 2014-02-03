program make_data
  implicit none
  integer,parameter :: int_test = 12
  real,dimension(int_test) :: flt_test = 11.11
  double precision,dimension(int_test,int_test) :: dbl_test = 12.3456
  complex,dimension(int_test)::cmplx_test  = (1.1111,2.2222)
  integer ::reclength

  open (unit=10, file='./data/test_data_formatted.dat', form = 'formatted')
  write(10,*) int_test,dbl_test
  close(10)
  INQUIRE ( iolength = reclength ) int_test,dbl_test,flt_test,cmplx_test
  open (unit=10,&
                  file='./data/test_data_binary.dat', &
                  form = 'unformatted',&
                  access='direct',&
                  recl = reclength)
  write(10,rec=1) int_test,dbl_test,flt_test,cmplx_test
  close(10)


  write(*,*)'Data_written'
  write(*,*) 'record length = ',reclength
end program make_data
