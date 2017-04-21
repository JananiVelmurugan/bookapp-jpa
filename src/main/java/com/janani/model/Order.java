package com.janani.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "orders")
public class Order {

	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@Column(name = "total_price")
	private Float totalPrice;

	@Column(name = "status")
	private String status;
	
	/*@OneToMany(fetch=FetchType.EAGER)
	private Set<OrderItem> orderItems;*/
	
	/*@Column (name="ordered_date")
	private LocalDate orderDate;*/

}
