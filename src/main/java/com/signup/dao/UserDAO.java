
package com.signup.dao;

import com.model.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public interface UserDAO {
	public User getUserByUsername(String username) throws UsernameNotFoundException;
	public User createUser(User user);
}