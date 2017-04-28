package com.janani.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.janani.model.Book;
import com.janani.repository.BookRepository;

@Service
public class BookService {

	@Autowired
	private BookRepository bookRepository;

	public List<Book> findAll() {
		return bookRepository.findAll();
	}

	public Book findOne(Long id) {
		return bookRepository.findOne(id);
	}

	public List<Book> findByPriceDesc() {
		return bookRepository.findByOrderByPriceDesc();
	}
	
	public List<Book> findByPriceAsc() {
		return bookRepository.findByOrderByPriceAsc();
	}
	
}
