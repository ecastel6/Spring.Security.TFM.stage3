package com.etsisi.sps.dao;

import com.etsisi.sps.model.User;

import java.util.List;

public interface UserDao {

	User findById(Integer id);

	List<User> findAll();

	void save(User user);

	void update(User user);

	void delete(Integer id);

}