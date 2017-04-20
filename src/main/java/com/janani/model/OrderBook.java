package com.janani.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "order_books")
public class OrderBook {

	@Id
	@Column(name = "id")
	private Long id;

	@Column(name = "user_id")
	private Long userId;

	@Column(name = "book_id")
	private Long bookId;

	@Column(name = "quantity")
	private Integer quantity;

}
