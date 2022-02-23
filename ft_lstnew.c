/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dgallo-p <dgallo-p@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/18 11:47:30 by dgallo-p          #+#    #+#             */
/*   Updated: 2021/11/19 11:55:04 by dgallo-p         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include    "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*newelm;

	newelm = (t_list *)malloc(sizeof(*newelm));
	if (!newelm)
		return (NULL);
	newelm->content = content;
	newelm->next = NULL;
	return (newelm);
}
