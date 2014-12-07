package com.login.service;

import com.login.form.LoginForm;
import com.login.form.SecureUser;
import com.login.utils.Roles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.stream.Collectors;


@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired private LoginService loginService;
	
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		LoginForm form = new LoginForm();
		form.setUsername(userName);
		form = loginService.loginUser(form);
		
		ArrayList<GrantedAuthority> authorities = new ArrayList<>();
		authorities.add(new SimpleGrantedAuthority(Roles.ROLE_BASIC));

		authorities.addAll(form.getAuthorities().stream().map(
			authority -> new SimpleGrantedAuthority(authority.getRole())
		).collect(Collectors.toList()));

		boolean enabled = true;
		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		boolean accountNonLocked = true;
		
		return new SecureUser(
			form.getUsername(),
			form.getPassword(),
			enabled,
			accountNonExpired,
			credentialsNonExpired,
			accountNonLocked,
			authorities,
			form
		);
	}
}