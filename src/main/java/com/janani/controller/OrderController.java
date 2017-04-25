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
import org.springframework.web.bind.annotation.RequestParam;

import com.janani.model.Order;
import com.janani.model.User;
import com.janani.repository.OrderRepository;

@Controller
@RequestMapping("orders")
public class OrderController {

	@Autowired
	private OrderRepository orderRepository;



	@GetMapping("/myorders")
	public String myOrders(ModelMap modelMap, HttpSession session) {

		User loggedInUser = (User) session.getAttribute("LOGGED_IN_USER");
		List<Order> list = orderRepository.findByUserId(loggedInUser.getId());
		modelMap.addAttribute("MY_ORDERS", list);
		return "order/listmyorders";

	}
	
	@GetMapping
	public String list(ModelMap modelMap, HttpSession session) {

		List<Order> list = orderRepository.findAll();
		System.out.println("orders:"+ list.size());
		for (Order order : list) {
			System.out.println(order);
		}
		modelMap.addAttribute("ORDERS_LIST", list);
		return "order/list";

	}

	@PostMapping("/save")
	public String save(HttpServletRequest request, HttpSession session) {

		return "order/summary";
	}
	
	@GetMapping("/updateStatus")
	public String updateStatus(@RequestParam("id") Long orderId , @RequestParam("status")String status ) {
		Order order = orderRepository.findOne(orderId);
		order.setStatus(status);
		orderRepository.save(order);	
		return "redirect:../orders/myorders";
	}
}
