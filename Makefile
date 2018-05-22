NAME	= libftprintf.a
FLAGS	= -Werror -Wall -Wextra
SRC		= adress_handle.c \
			apply_flags.c \
			char_handle.c \
			ft_itoa_long.c \
			ft_printf.c \
			hex_handle.c \
			init_data.c \
			int_handler.c \
			n_handle.c \
			octal_handle.c \
			parse_flags.c \
			parse_length.c \
			parse_precision.c \
			parse_specifiers.c \
			parse_width.c \
			percent_handle.c \
			print_string.c \
			string_handle.c \
			undefined_handle.c \
			unsigned_handle.c \
			wide_string.c \
			binary_handle.c \
			wide_things.c

OBJ		= adress_handle.o \
			apply_flags.o \
			char_handle.o \
			ft_itoa_long.o \
			ft_printf.o \
			hex_handle.o \
			init_data.o \
			int_handler.o \
			n_handle.o \
			octal_handle.o \
			parse_flags.o \
			parse_length.o \
			parse_precision.o \
			parse_specifiers.o \
			parse_width.o \
			percent_handle.o \
			print_string.o \
			string_handle.o \
			undefined_handle.o \
			unsigned_handle.o \
			wide_string.o \
			wide_things.o \
			binary_handle.o

all: $(NAME)

$(NAME): $(OBJ)
	make -C libft
	cp libft/libft.a ./$(NAME)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ): $(SRC)
	gcc $(FLAGS) -I. -c $(SRC)
clean:
	rm -f $(OBJ)
	make -C libft/ clean
fclean: clean
	make -C libft/ fclean
	rm -f $(NAME)
re: fclean all

.PHONY: all clean fclean re
