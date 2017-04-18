package com.janani.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.janani.model.Book;
import com.janani.repository.BookRepository;

@Controller
@RequestMapping("books")
public class BookController {

	@Autowired
	private BookRepository bookRepository;

	@GetMapping("/")
	public String show(HttpSession session) {
		List<Book> books = bookRepository.findAll();
		System.out.println(books);
		session.setAttribute("books", books);
		return "book-list";
	}

}
