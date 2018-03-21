package com.hs.service;

import com.hs.domain.User;

import java.util.List;

public interface UserService {
	List<User> findAll();

	User findOne(Integer id);
}
