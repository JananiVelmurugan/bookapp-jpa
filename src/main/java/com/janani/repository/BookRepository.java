package com.janani.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.janani.model.Book;

public interface BookRepository extends JpaRepository<Book, Long> {

	@Query(name = "SELECT SUM(a.qp) total_price FROM(SELECT quantity*price qp FROM order_items JOIN books ON books.id=order_items.book_id WHERE order_id=?1) a", nativeQuery = true)
	public Float findByPrice(Long orderId);
}
