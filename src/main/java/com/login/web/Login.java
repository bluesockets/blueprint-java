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
public class Login {
	
    @RequestMapping(value="/login.bp")
    public String defaultUserLogin(HttpServletRequest request) {
    	if(request.getSession().getAttribute("loginAttempts") != null ) {
    		request.getSession().removeAttribute("loginAttempts");
    	}
		SecurityContext context = SecurityContextHolder.getContext();
		Collection<? extends GrantedAuthority> authorities = context.getAuthentication().getAuthorities();
		for(GrantedAuthority authority : authorities) {
			if(authority.getAuthority().equalsIgnoreCase(Roles.ROLE_ADMIN)) {
				return "redirect:/administration/dashboard.bp";
			} 
		}		
        return "redirect:/index.bp";
    }
   
}
