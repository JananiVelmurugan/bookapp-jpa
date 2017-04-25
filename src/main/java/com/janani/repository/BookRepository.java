package com.janani.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.janani.model.Book;

public interface BookRepository extends JpaRepository<Book, Long> {
/*
	@Query(name = "SELECT fn_get_order_amount(?1)", nativeQuery = true)
	public Integer findByPrice(Long orderId);*/
}
