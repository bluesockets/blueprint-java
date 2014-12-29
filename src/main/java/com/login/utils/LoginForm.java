package com.login.utils;

import java.io.Serializable;

import java.util.Set;

import com.model.UserAuthority;
import org.hibernate.validator.constraints.NotEmpty;

public class LoginForm implements Serializable {

	private static final long serialVersionUID = 1L;
	
	// == fields == //

	protected Integer userId;

	@NotEmpty(message="Username is required")
	protected String username;
	
	@NotEmpty(message="Password is required")
	protected transient String password;

	protected Set<UserAuthority> authorities;

	protected String errorMessage;
	
	// == helpers == //

	@Override
	public String toString() {
		return "LoginForm{" +
				"username='" + username + '\'' +
				", password='" + password + '\'' +
				", authorities=" + authorities +
				", errorMessage='" + errorMessage + '\'' +
				'}';
	}

	// == methods == //

	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Set<UserAuthority> getAuthorities() {
		return authorities;
	}
	public void setAuthorities(Set<UserAuthority> authorities) {
		this.authorities = authorities;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
}
