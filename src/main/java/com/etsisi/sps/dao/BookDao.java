package com.etsisi.sps.dao;

import com.etsisi.sps.model.Book;

import java.util.List;

public interface BookDao {

	Book findById(Integer id);

	List<Book> findAll();

	void save(Book book);

	void update(Book book);

	void delete(Integer id);

}