package com.login.service;

import com.login.dao.UserDAO;
import com.login.entities.User;
import com.login.utils.LoginForm;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class LoginServiceImpl implements LoginService {

	private static final Log log = LogFactory.getLog(LoginServiceImpl.class);

	@Autowired protected UserDAO userDAO;

	public LoginForm loginUser(LoginForm loginForm) {
		User userLoggedIn = userDAO.getUserByUsername(loginForm.getUsername());
		if(userLoggedIn == null) {
			throw new UsernameNotFoundException("No user found with username: " + loginForm.getUsername());
		}
		loginForm.setPassword(userLoggedIn.getPassword());
		loginForm.setAuthorities(userLoggedIn.getAuthorities());
		return loginForm;
	}


}
