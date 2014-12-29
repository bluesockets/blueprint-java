package com.signup.web;

import com.model.User;
import com.signup.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class SignupMVC {

    @Autowired protected UserService userService;
	
    @RequestMapping(value= "/signup/simple.bp")
    public ModelAndView contentDashboard(@ModelAttribute("user") User user) {
        ModelAndView mav = new ModelAndView("/signup/simple.jsp");
        return mav;
    }

    @RequestMapping(value= "/signup/simple/submit.bp")
    public ModelAndView contentEdit(
        @Valid @ModelAttribute("user") User user,
        BindingResult result,
        @RequestParam(value = "passwordConfirm") String passwordConfirm
    ) {

        if(null != passwordConfirm && !passwordConfirm.equals(user.getPassword())) {
            String [] codes = {"passwordConfirm.mustMatch"};
            result.addError(new FieldError("user","password",null, false, codes, null, "Passwords must match."));
        }

        ModelAndView mav = new ModelAndView("/signup/confirm.jsp");
        mav.addObject("user",user);
        if(result.hasErrors()) {
            return new ModelAndView("/signup/simple.jsp");
        }

        user.initCreateData();
        userService.createUser(user);
        return mav;
    }

}