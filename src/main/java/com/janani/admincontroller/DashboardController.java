package com.janani.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.janani.dto.DashboardDTO;

@Controller
@RequestMapping("admin/dashboard")
public class DashboardController {
	
	@GetMapping
	public String index(ModelMap modelMap){
		
		DashboardDTO dto = new DashboardDTO();
		dto.setNoOfUsers(500);
		dto.setNoOfOrders(1000);
		dto.setTotalOrderAmount(250000L);
		modelMap.addAttribute("DASHBOARD_DATA", dto);
		
		return "admin/dashboard";
	}
}
