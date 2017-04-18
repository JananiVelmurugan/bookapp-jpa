package com.janani.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.janani.model.Order;
import com.janani.model.User;
import com.janani.repository.OrderRepository;

@Controller
@RequestMapping("orders")
public class OrderController {

	@Autowired
	private OrderRepository orderRepository;

	@GetMapping("/")
	public String list(HttpSession session) {

		List<Order> list = orderRepository.findAll();
		session.setAttribute("cart", list);
		return "view-cart";

	}

	@PostMapping("/save")
	public String save(HttpServletRequest request, HttpSession session) {
		Long bookId = Long.parseLong(request.getParameter("book_id"));
		String bookName = request.getParameter("book_name");
		Float bookPrice = Float.parseFloat(request.getParameter("book_price"));
		Integer bookQuantity = Integer.parseInt(request.getParameter("book_quantity"));
		User user = (User) session.getAttribute("user");

		Order order = new Order();

		order.setUserId(user.getId());
		order.setBookId(bookId);
		order.setQuantity(bookQuantity);

		orderRepository.save(order);

		return "book-list";
	}
}
