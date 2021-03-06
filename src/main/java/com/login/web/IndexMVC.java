package com.login.web;

import javax.servlet.http.HttpSession;

import com.login.utils.LoginForm;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexMVC {
	
	private static final Log log = LogFactory.getLog(IndexMVC.class);
	
	protected static final String INDEX_VIEW = "/index.bp";
	protected static final String LOGOUT_VIEW = "/logout.bp";
	protected static final String INDEX_JSP = "/index.jsp";
	
	@RequestMapping(value = INDEX_VIEW)
	public ModelAndView index(
		LoginForm loginForm,
		Model model
	) {
		log.info("forwarding to index.jsp");
		ModelAndView modelAndView = new ModelAndView(INDEX_JSP, "loginForm", loginForm);
		String resetPasswordMsg = (String) model.asMap().get("resetPasswordMsg");
		if (resetPasswordMsg != null && ! resetPasswordMsg.isEmpty()) {
			modelAndView.addObject("resetPasswordMsg", model.asMap().get("resetPasswordMsg"));
		}
		return modelAndView;
	}

	@RequestMapping(value = LOGOUT_VIEW, method=RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView("redirect:"+ INDEX_VIEW);
		return mav;
	}
}