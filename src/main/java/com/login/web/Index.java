package com.login.web;

import javax.servlet.http.HttpSession;

import com.login.form.LoginForm;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Index {
	
	private static final Log log = LogFactory.getLog(Index.class);
	
	protected static final String INDEX = "/ISS/index.sf";
	protected static final String INDEX_JSP = "/index.jsp";
	
	@RequestMapping(value = "/index.sf")
	public ModelAndView index(
		LoginForm loginForm,
		ModelAndView mav,
		Model model
	) {
		log.info("forwarding to index.jsp");
		ModelAndView modelAndView = new ModelAndView(INDEX_JSP, "loginForm", loginForm);
		String resetPasswordMsg = (String) model.asMap().get("resetPasswordMsg");
		if (resetPasswordMsg != null && ! resetPasswordMsg.isEmpty()) {
			mav.addObject("resetPasswordMsg", model.asMap().get("resetPasswordMsg"));
		}
		return modelAndView;
	}

	@RequestMapping(value = "/logout.sf", method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView("redirect:"+INDEX);
		return mav;
	}
}
