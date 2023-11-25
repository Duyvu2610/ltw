package services;

import dao.UserDAO;
import dao.UserDAO;
import models.User;

public class UserService{
	UserDAO userDao = new UserDAO();


	public boolean create(User user) {
		// TODO Auto-generated method stub
		return userDao.createUser(user);
		
	}


	public boolean login(String email, String pw) {
		if (userDao.getUser(email) == null) return false;
		return userDao.getUser(email).password().equals(pw);
	}

}
