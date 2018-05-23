package com.etsisi.sps.service;

import com.etsisi.sps.model.Book;

import java.util.List;

public interface BookService {

	Book findById(Integer id);
	
	List<Book> findAll();

	void saveOrUpdate(Book book);
	
	void delete(int id);
	
}