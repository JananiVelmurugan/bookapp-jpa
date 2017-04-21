package com.janani.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
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
	
	

	@GetMapping("/myorders")
	public String myOrders(ModelMap modelMap, HttpSession session) {

		User loggedInUser = (User) session.getAttribute("LOGGED_IN_USER");
		List<Order> list = orderRepository.findByUserId(loggedInUser.getId());
		modelMap.addAttribute("MY_ORDERS", list);
		return "order/listmyorders";

	}

	@PostMapping("/save")
	public String save(HttpServletRequest request, HttpSession session) {

		return "order/summary";
	}
}
