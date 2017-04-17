package com.janani.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("books")
public class BookController {
	
	@GetMapping("/add")
	public String showAddBook() {
		return "add_book";
	}
	
	
}
