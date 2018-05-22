/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putendl.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mabanciu <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/12/14 13:15:57 by mabanciu          #+#    #+#             */
/*   Updated: 2017/12/18 15:14:38 by mabanciu         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putendl(char const *s)
{
	size_t	i;

	i = 0;
	if (s)
		while (s[i])
		{
			ft_putchar(s[i]);
			i++;
		}
	write(1, "\n", 1);
}
