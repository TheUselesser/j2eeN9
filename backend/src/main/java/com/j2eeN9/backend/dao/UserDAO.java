package com.j2eeN9.backend.dao;

import java.util.List;

import com.j2eeN9.backend.dto.User;

public interface UserDAO {

	// user related operation
	User getByEmail(String email);
	User get(int id);

	boolean add(User user);
}
