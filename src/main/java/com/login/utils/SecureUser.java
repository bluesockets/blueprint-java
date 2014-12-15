package com.login.utils;

import java.util.Collection;

import com.login.utils.LoginForm;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class SecureUser extends User {

	private static final long serialVersionUID = 7289105534152948655L;

	private LoginForm userForm;
	
	//<--------------- Constructors --------------->

	public SecureUser(String username, 
			String password, 
			boolean enabled, 
			boolean accountNonExpired, 
			boolean credentialsNonExpired,
			boolean accountNonLocked, 
			Collection<? extends GrantedAuthority> authorities, 
			LoginForm userForm) {
		super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
		this.setUserForm(userForm);
	}

	//<--------------- Field Getters and Setters --------------->
	
	public LoginForm getUserForm() {
		return userForm;
	}

	public void setUserForm(LoginForm userForm) {
		this.userForm = userForm;
	}
	
}
