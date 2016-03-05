CXX =	g++

RM	=	rm -f

CFLAGS	+=	-Wextra	-Wall -Werror

CXXFLAGS	+=	-Wextra	-Wall -Werror -fPIC

LDFLAGS		+=	-ldl


NAME	=	./user/lib_fat.so

SRCS	=	./src/main.cpp 	\

OBJS	=	$(SRCS:.cpp=.o)


$(NAME):	$(OBJS)
			$(CXX) -shared -o $(NAME) $(OBJS)

all:	$(NAME)


clean:
				$(RM) $(OBJS)

fclean:	clean
				$(RM) $(NAME)

re: 	fclean all

.PHONY:	all clean fclean re