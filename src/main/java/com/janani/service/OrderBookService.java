package com.janani.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.janani.model.OrderBook;
import com.janani.repository.OrderBookRepository;

@Service
public class OrderBookService {

	@Autowired
	private OrderBookRepository orderBookRepository;

	public void save(OrderBook orderBook) {
		orderBookRepository.save(orderBook);
	}

}
