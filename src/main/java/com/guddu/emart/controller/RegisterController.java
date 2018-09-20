package com.guddu.emart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.guddu.emart.dao.UserDAO;
import com.guddu.emart.model.User;

@Controller
public class RegisterController {


	@Autowired
	private UserDAO userDAO;

	@RequestMapping(value="/register")
	public String displayUserRegister(Model model)
	{
		model.addAttribute("user", new User());
		return "register";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("user") User user, HttpServletRequest request) {
		if (user.getId() == 0) {
			userDAO.saveUser(user);
			return "login";
		}
		else
		return "redirect:/register";
	}
}
