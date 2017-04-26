package com.janani.admincontroller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.janani.model.Book;
import com.janani.service.BookService;

@Controller
@RequestMapping("admin/books")
public class AdminBookController {

	private static final Logger LOGGER = Logger.getLogger(AdminBookController.class);

	@Autowired
	private BookService bookService;

	@GetMapping
	public String list(HttpSession session) {
		LOGGER.info("Entering list");
		List<Book> books = bookService.findAll();
		System.out.println(books);
		session.setAttribute("books", books);
		return "admin/book_list";
	}
}
