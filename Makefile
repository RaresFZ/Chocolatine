##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## A makefile
##

SRC = 	test.c

OBJ = $(SRC:.c=.o)

NAME = test

all: $(NAME)

$(NAME): $(OBJ)
	gcc -o $(NAME) -I./include $(OBJ)
	make clean

clean :
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

debug:
	gcc -g3 -o $(NAME) -I./include $(SRC)

.PHONY:	clean fclean re all
