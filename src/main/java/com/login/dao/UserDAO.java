
package com.login.dao;

import com.login.entities.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public interface UserDAO {
	public User getUserByUsername(String username) throws UsernameNotFoundException;
}