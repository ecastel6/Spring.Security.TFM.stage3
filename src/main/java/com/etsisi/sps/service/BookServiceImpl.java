package com.etsisi.sps.service;

import com.etsisi.sps.dao.BookDao;
import com.etsisi.sps.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class BookServiceImpl implements BookService{

	BookDao bookDao;

	@Autowired
	public void setUserDao(BookDao bookDao) {
		this.bookDao= bookDao;
	}

	@Override
	public Book findById(Integer id) {
		return  bookDao.findById(id);
	}

	@Override
	public List<Book> findAll() {
		return bookDao.findAll();
	}

	@Override
	public void saveOrUpdate(Book book) {

		if (findById(book.getId())==null) {
			bookDao.save(book);
		} else {
			bookDao.update(book);
		}
	}

	@Override
	public void delete(int id) {
		bookDao.delete(id);
	}

}