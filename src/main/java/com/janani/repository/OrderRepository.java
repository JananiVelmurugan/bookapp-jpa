package com.janani.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.janani.model.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {

//	@Query(value="select * from orders o, order_items oi where o.id = oi.order_id and user_id =?1", nativeQuery=true)
	public List<Order> findByUserId(Long userId);
}
