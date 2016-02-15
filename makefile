# Made by Marcin Piniarski

CC = gcc

INC_PATH = ./Inc/
SRC_PATH = ./Src/


#Set up flags:
CFLAGS  = -Wall -g 
LFLAGS = -Wall -g 

#Set up included header files
INCLUDES = -I$(INC_PATH) 

#Set up sources of project
CSOURCES=$(shell (find -L $(SRC_PATH) -name '*.c' | sed -e 's!^./Src!./Res!' -e 's/\.c$$/\.out/' ))

default: $(CSOURCES) 

#Compile:
Res/%.out: ./Src/%.c
	$(CC) $(CFLAGS) $(INCLUDES) $< -o $@
	@echo "Compiled "$<"!"

clean:
	rm -f ./Res/* 
















