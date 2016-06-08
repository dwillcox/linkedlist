module linked_list_data

  implicit none

  type :: cell_data_t
     integer :: n
   contains
     procedure :: init, terminate
  end type cell_data_t

contains

  subroutine init(cell_data)
    class(cell_data_t) :: cell_data
    cell_data % n = 0
  end subroutine init
  
  subroutine terminate(cell_data)
    class(cell_data_t) :: cell_data
    ! STUB
  end subroutine terminate
  
end module linked_list_data
