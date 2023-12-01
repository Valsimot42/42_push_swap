/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_sort_utils.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tbolkova <tbolkova@student.42wolfsburg.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/03 10:45:15 by tbolkova          #+#    #+#             */
/*   Updated: 2023/04/03 10:45:17 by tbolkova         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../push_swap.h"

int	get_maxind(t_stack **stack)
{
	t_stack	*node;
	int		max_a_index;

	node = *stack;
	max_a_index = 0;
	while (node)
	{
		if (max_a_index < node->index)
			max_a_index = node->index;
		node = node->next;
	}
	return (max_a_index);
}

int	get_lowind_pos(t_stack **stack)
{
	t_stack	*node;
	t_stack	*lowind_node;
	int		position;

	node = *stack;
	lowind_node = *stack;
	position = 0;
	while (node)
	{
		if (node->index < lowind_node->index)
			lowind_node = node;
		node = node->next;
	}
	position = lowind_node->pos;
	return (position);
}
