package com.login.web;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import com.login.utils.Roles;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.security.core.context.SecurityContext;

@Controller
public class LoginMVC {
	
    @RequestMapping(value="/login.sf")
    public String defaultUserLogin(HttpServletRequest request) {
    	if(request.getSession().getAttribute("loginAttemps") != null ) {
    		request.getSession().removeAttribute("loginAttemps");
    	}

		SecurityContext context = SecurityContextHolder.getContext();
		Collection<? extends GrantedAuthority> authorities = context.getAuthentication().getAuthorities();
		for(GrantedAuthority authority : authorities) {
			if(authority.getAuthority().equalsIgnoreCase(Roles.ROLE_ADMIN)) {
				return "redirect:/administration/dashboard.sf";
			} 
		}		
        return "redirect:http://www.google.com";
    }
   
}
