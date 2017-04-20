package com.janani.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.janani.model.OrderBook;

public interface OrderBookRepository extends JpaRepository<OrderBook, Long> {

}
