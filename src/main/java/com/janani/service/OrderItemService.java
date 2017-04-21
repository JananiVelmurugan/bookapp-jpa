package com.janani.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.janani.model.OrderItem;
import com.janani.repository.OrderItemRepository;

@Service
public class OrderItemService {

	@Autowired
	private OrderItemRepository orderItemRepository;

	public void save(OrderItem orderItem) {
		orderItemRepository.save(orderItem);
	}

	public Float findByOrder(Long id) {
		Float totalPrice = orderItemRepository.findByOrder(id);
		return totalPrice;
	}

}
