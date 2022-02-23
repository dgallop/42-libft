# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dgallo-p <dgallo-p@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/08 12:45:37 by dgallo-p          #+#    #+#              #
#    Updated: 2021/11/19 12:34:20 by dgallo-p         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME        = libft.a

CC          = gcc
CFLAGS      = -Wall -Wextra -Werror
AR          = ar rcs
RM          = rm -f

SRCS        = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c \
			ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c \
			ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c \
			ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c \
			ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

BONUS       = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
				ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS        = $(SRCS:.c=.o)

OBJSBONUS   = $(BONUS:.c=.o)

bonus:      $(OBJS) $(OBJSBONUS)
				ar rcs $(NAME) $(OBJS) $(OBJSBONUS)

all:        $(NAME)

$(NAME):    $(OBJS)
				$(AR) $(NAME) $(OBJS)
				@echo "$(NAME) created"
				@ranlib $(NAME)
				@echo "$(NAME) inexed"

%.o: %.c
				$(CC) $(CFLAGS) -c $< -o $@

clean:
				$(RM) $(OBJS) $(OBJSBONUS)
				@echo "borrado"

fclean: clean
				$(RM) $(NAME)
				@echo "$(NAME) deleted"

re: fclean all

.PHONY: all, clean, fclean, re
