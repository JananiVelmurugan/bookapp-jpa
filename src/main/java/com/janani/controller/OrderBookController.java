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
import com.janani.model.OrderBook;
import com.janani.model.User;
import com.janani.service.BookService;
import com.janani.service.OrderBookService;

@Controller
@RequestMapping("/orderBooks")
public class OrderBookController {

	@Autowired
	private OrderBookService orderBookService;

	@Autowired
	private BookService bookService;

	@GetMapping("/addToCart")
	public String addToCart(@RequestParam("book_id") String id, HttpServletRequest request) {

		Book book = bookService.findOne(Long.parseLong(id));
		request.setAttribute("book", book);
		return "order/add-to-cart";

	}

	@PostMapping("/addToCart")
	public void addToCart(@RequestParam("book_quantity") Integer quantity, HttpServletRequest request,
			HttpSession session) {
		User user = (User) session.getAttribute("LOGGED_IN_USER");
		Book book = (Book) request.getAttribute("book");

		OrderBook orderBook = new OrderBook();
		orderBook.setUserId(user.getId());
		orderBook.setBookId(book.getId());
		orderBook.setQuantity(quantity);

		orderBookService.save(orderBook);
	}

}
