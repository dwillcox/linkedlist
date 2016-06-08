FFLAGS=-g -Wall

all:
	gfortran -c linked_list_data.f90
	gfortran -c ll_module.f90
	gfortran -c usell.f90
	gfortran -o usell.exe linked_list_data.o ll_module.o usell.o

clean:
	rm *.o *.mod *~ *.exe
