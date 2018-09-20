package com.guddu.emart.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.guddu.emart.model.Login;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/login")
	public String loginPage() {
		return "login";
	}

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String doLogin(@ModelAttribute("user")Login validate,BindingResult result,Map<String,Object>model)
	{
		if(result.hasErrors())
		{
			return "login";
		}
		return "login";
	}
	
	@RequestMapping(value="/logout")
	public String logoutpage(HttpServletRequest request,HttpServletResponse response) {
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		if(auth!= null)
		{
			new SecurityContextLogoutHandler().logout(request,response,auth);
		}
		return "redirect:/login";
	}
	}

