package com.janani.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.janani.model.OrderItem;
import com.janani.repository.BookRepository;
import com.janani.repository.OrderItemRepository;

@Service
public class OrderItemService {

	@Autowired
	private OrderItemRepository orderItemRepository;
	
	@Autowired
	private BookRepository bookRepository;

	public void save(OrderItem orderItem) {
		orderItemRepository.save(orderItem);
	}

	public Float findByOrder(Long id) {
	/*	List<Integer> priceList = orderItemRepository.findPrice(id);
		Float totalPrice = 0f;
		for (Integer price : priceList) {
			totalPrice+=price;
		}*/
		Float totalPrice = bookRepository.findByPrice(id);
		return totalPrice;
	}

}
