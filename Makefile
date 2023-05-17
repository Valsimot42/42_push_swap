# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tbolkova <tbolkova@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/27 20:13:25 by stena-he          #+#    #+#              #
#    Updated: 2023/04/02 18:23:17 by tbolkova         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# # Compilation
# NAME = 	push_swap
# CC = gcc
# CFLAGS = -Wall -Wextra -Werror -g

# # Libraries
# LIBFT = Library/Ft_printf/Libft/libft.a
# PRINTF = Library/Ft_printf/libftprintf.a

# # Paths
# SRC_PATH = src/
# OBJ_PATH = obj/
# LIBFT_PATH = Library/Ft_printf/Libft
# PRINTF_PATH = Library/Ft_printf

# # Source and object files
# SRC =	main.c \
# 		parse_args.c \
# 		ft_atoi_mod.c \
# 		ft_sort.c \
# 		ft_sort_cont.c \
# 		exec_actions.c \
# 		final_sort.c \
# 		ft_sort_utils.c \
# 		linked_lists.c \
# 		utils.c \
# 		push.c \
# 		swap.c \
# 		rotate.c \
# 		reverse_rotate.c

# # Add prefixes
# SRCS	= $(addprefix $(SRC_PATH), $(SRC))
# OBJ		= $(SRCS:.c=.o)

# # Rules
# all: $(OBJ_PATH) $(NAME)

# $(OBJ_PATH):
# 	mkdir $(OBJ_PATH)

# $(NAME): $(OBJ)
# 	$(MAKE) -C $(PRINTF_PATH)
# 	$(CC) $(CFLAGS) $(OBJ) $(MLX) $(LIBFT) $(PRINTF) -o $(NAME)
# 	mv $(OBJ) $(OBJ_PATH)

# clean:
# 	rm -rf $(OBJ_PATH)
# 	$(MAKE) clean -C $(LIBFT_PATH)
# 	$(MAKE) clean -C $(PRINTF_PATH)

# fclean: clean
# 	rm -f $(NAME)
# 	$(MAKE) fclean -C $(LIBFT_PATH)
# 	$(MAKE) fclean -C $(PRINTF_PATH)
	
# re: fclean all

# .PHONY: all clean fclean re

NAME = push_swap
LIB = libftprintf.a
SRC = src
INC = inc
LIB_F = Library/Ft_printf
CC = gcc
LIBS = $(LIB_F)/$(LIB)
CFLAGS = -g -o3 -I $(INC)
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
	@echo "$(GREEN)pushswap compiled!$(DEF_COLOR)"

$(LIBS): 
	@make -C $(LIB_F)
	@echo "$(BLUE)libft is done!$(DEF_COLOR)"

clean:
	@rm -rf $(OBJ_F)

fclean: clean
	@rm -rf $(NAME)
	@make fclean -C $(LIB_F)
	@echo "$(YELLOW)Evrything was cleaned $(DEF_COLOR)"

re: fclean all

.PHONY: all clean fclean re
