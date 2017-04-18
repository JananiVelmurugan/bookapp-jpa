package com.janani.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.janani.model.Book;

public interface BookRepository extends JpaRepository<Book, Long> {

}
