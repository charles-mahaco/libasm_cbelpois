NAME = libasm.a

NASM = nasm -f elf64

FLAG = -lc -include /usr/include/errno.h -no-pie -fsanitize=address

SRCS = srcs/

OBJS =	ft_strlen.o \
		ft_strcpy.o \
		ft_write.o  \
		ft_strcmp.o \
		ft_strdup.o \
		ft_read.o	\

%.o: $(SRCS)%.s
	$(NASM) $< -o $@

exec : all
		gcc  $(FLAG) main.c $(NAME)
		make clean
		./a.out

all : $(NAME)

$(NAME) : $(OBJS)
		ar -rc $(NAME) $(OBJS)
		#ranlib $(NAME)

fclean : clean
		rm -rf $(NAME) a.out

clean :
		rm -rf $(OBJS)

re :	fclean all

.PHONY : clean fclean re all