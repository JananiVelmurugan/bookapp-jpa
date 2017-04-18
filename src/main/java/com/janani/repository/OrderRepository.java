package com.janani.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.janani.model.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {

}
