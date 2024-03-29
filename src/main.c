/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tbolkova <tbolkova@student.42wolfsburg.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/03 10:48:36 by tbolkova          #+#    #+#             */
/*   Updated: 2023/04/03 10:50:17 by tbolkova         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../push_swap.h"
//Main

int	main(int argc, char **argv)
{
	t_stack		*a_stack;
	t_stack		*b_stack;
	int			is_string;

	b_stack = NULL;
	is_string = 0;
	if (argc < 2)
		return (0);
	if (argc == 2)
	{
		argv = ft_split(argv[1], ' ');
		if (argv == NULL)
			return (0);
		is_string = 1;
	}
	a_stack = parse_args(argv, is_string);
	ft_sort(&a_stack, &b_stack);
	free_stack(&a_stack);
	free_stack(&b_stack);
	return (0);
}
