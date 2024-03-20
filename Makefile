##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## A makefile
##

SRC = *.c

OBJ = $(SRC:.c=.o)

NAME = chef

all:	$(OBJ)
	gcc	$(SRC)	-o	$(NAME)
	make clean

tests_run:	$(OBJ)
	gcc $(SRC) -o $(NAME)
	make clean

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: all
