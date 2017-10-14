package com.dao;

import com.model.User;

public interface UserDao {
	public void saveUser(User user);
	public User getUserById(int uid);
	public User getUserByName(String uname);

}
