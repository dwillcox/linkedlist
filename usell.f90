program usell

  use linked_list_module

  type(cell_t) :: trunk
  type(cell_t), pointer :: iptr, jptr, kptr, iscratch, jscratch, kscratch
  integer :: i, j, k
  integer, parameter :: imax = 2
  integer, parameter :: jmax = 2
  integer, parameter :: kmax = 2

  ! Fill linked list network
  do i = 1, imax
     write(*,*) 'i: ', i
     call trunk % append_new_child(iscratch)
     iscratch % data % n = i
     do j = 1, jmax
        write(*,*) 'j: ', j
        call iscratch % append_new_child(jscratch)
        jscratch % data % n = j
        do k = 1, kmax
           write(*,*) 'k: ', k
           call jscratch % append_new_child(kscratch)
           kscratch % data % n = k
        end do
     end do
  end do

  ! Print contents of linked list network
  i = 1
  iptr => trunk % first_child
  do while ( associated(iptr) )
     write(*,*) 'iptr is associated: ', i
     j = 1
     jptr => iptr % first_child
     do while ( associated(jptr) )
        write(*,*) 'jptr is associated: ', j
        k = 1
        kptr => jptr % first_child
        do while( associated(kptr) )
           write(*,*) 'kptr is associated: ', k
           write(*,*) '(i, j, k): ', iptr % data % n, jptr % data % n, kptr % data % n
           kptr => kptr % next
           k = k + 1
        end do
        jptr => jptr % next
        j = j + 1
     end do
     iptr => iptr % next
     i = i + 1
  end do

  ! Delete and deallocate
  call trunk % delete_children

end program usell
