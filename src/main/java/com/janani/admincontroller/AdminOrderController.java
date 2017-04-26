package com.janani.admincontroller;

import java.time.LocalDate;
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
import com.janani.service.OrderService;

@Controller
@RequestMapping("admin/orders")
public class AdminOrderController {

	@Autowired
	private OrderService orderService;
	
	@GetMapping
	public String list(ModelMap modelMap, HttpSession session) {

		List<Order> list = orderService.findAll();
		System.out.println("orders:"+ list.size());
		for (Order order : list) {
			System.out.println(order);
		}
		modelMap.addAttribute("ORDERS_LIST", list);
		return "admin/order_list";

	}
	
	@GetMapping("/updateStatus")
	public String updateStatus(@RequestParam("id") Long orderId , @RequestParam("status")String status ) {
		Order order = orderService.findOne(orderId);
		if ("CANCELLED".equals(status) ) {
			order.setCancelledDate(LocalDate.now());
		}
		else if ("DELIVERED".equals(status)) {
			order.setDeliveredDate(LocalDate.now());
		}
		
		order.setStatus(status);
		orderService.save(order);	
		return "redirect:../../admin/orders";
	}
}
