# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbolkova <tbolkova@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/03 10:48:57 by tbolkova          #+#    #+#              #
#    Updated: 2023/04/03 17:20:54 by tbolkova         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap
LIB = libftprintf.a
SRC = src
INC = inc
LIB_F = Library/Ft_printf
CC = gcc
LIBS = $(LIB_F)/$(LIB)
CFLAGS = -g -Wall -Wextra -Werror -I $(INC)
SRC_F = src/main.c \
		src/parse_args.c \
		src/ft_atoi_mod.c \
		src/ft_sort.c \
		src/ft_sort_cont.c \
		src/exec_actions.c \
		src/final_sort.c \
		src/ft_sort_utils.c \
		src/linked_lists.c \
		src/utils.c \
		src/push.c \
		src/swap.c \
		src/rotate.c \
		src/reverse_rotate.c
OBJ_F = $(SRC_F:.c=.o)

GREEN = \033[0;92m
YELLOW = \033[0;93m
BLUE = \033[0;34m
DEF_COLOR = \033[0;39m

all: $(NAME)

$(NAME): $(OBJ_F) $(LIBS)
	@$(CC) $^ -o3 -o $(NAME)
	@echo "$(GREEN)Pushswap compiled!$(DEF_COLOR)"

$(LIBS): 
	@make -C $(LIB_F)
	@echo "$(BLUE)Libft is done!$(DEF_COLOR)"

clean:
	@rm -rf $(OBJ_F)

fclean: clean
	@rm -rf $(NAME)
	@make fclean -C $(LIB_F)
	@echo "$(YELLOW)Everything was cleaned $(DEF_COLOR)"

re: fclean all

.PHONY: all clean fclean re
