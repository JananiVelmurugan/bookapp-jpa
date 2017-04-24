package com.janani.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.janani.model.Book;
import com.janani.model.Order;
import com.janani.model.OrderItem;
import com.janani.model.User;
import com.janani.service.BookService;
import com.janani.service.OrderItemService;
import com.janani.service.OrderService;

@Controller
@RequestMapping("/orderItems")
public class OrderItemController {

	@Autowired
	private OrderService orderService;

	@Autowired
	private OrderItemService orderItemService;

	@Autowired
	private BookService bookService;

	@GetMapping("/addToCart")
	public String addToCart(@RequestParam("book_id") String id, HttpServletRequest request) {

		Book book = bookService.findOne(Long.parseLong(id));
		request.setAttribute("book", book);
		return "order/add-to-cart";

	}

	@PostMapping("/addToCart")
	public String addToCart(@RequestParam("book_id") Long bookId, @RequestParam("qty") Integer qty,  HttpServletRequest request, HttpSession session) {

		User user = (User) session.getAttribute("LOGGED_IN_USER");
		Order order = new Order();
		order.setUser(user);
		order.setTotalPrice(0f);
		order.setStatus("ORDERED");
		orderService.save(order);

		OrderItem orderItem = new OrderItem();
		orderItem.setOrder(order);
		Book book = bookService.findOne(bookId);
		orderItem.setBook(book);
		orderItem.setQuantity(qty);
		orderItemService.save(orderItem);
/*
		Float totalPrice = orderItemService.findByOrder(order.getId());
		order.setTotalPrice(totalPrice);
		orderService.save(order);*/
		
		
		return "redirect:/books";
	}

	@GetMapping("/list")
	public String list(HttpSession session) {
		return null;

	}

}
