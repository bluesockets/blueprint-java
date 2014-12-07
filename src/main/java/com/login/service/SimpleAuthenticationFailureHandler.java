package com.login.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

public class SimpleAuthenticationFailureHandler extends SimpleUrlAuthenticationFailureHandler {

	public static Log log = LogFactory.getLog(SimpleAuthenticationFailureHandler.class);

	@Override
	public void onAuthenticationFailure(
			HttpServletRequest request,
			HttpServletResponse response, AuthenticationException exception)
			throws IOException, ServletException {
		
		final int loginAttempts;
		if(request.getSession().getAttribute("loginAttemps") == null ) {
			loginAttempts = 1;
		} else {
			loginAttempts = ((Integer) request.getSession().getAttribute("loginAttemps")).intValue() + 1; 
		}
		log.info("Failure handler invoked loginAttemps -> " +loginAttempts);
		request.getSession().setAttribute("loginAttemps", loginAttempts);
		super.onAuthenticationFailure(request, response, exception);
	}

}
