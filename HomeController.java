package com.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController
{
	@RequestMapping("/")
	public String ShowHome()
	{
		return "home";
	}
	@RequestMapping("/login")
	public String ShowLogin()
	{
		return "login";
	}
	@RequestMapping("/register")
	public String ShowRegister()
	{
		return "register";
	}
	@RequestMapping("/product1")
	public String ShowProd1()
	{
		return "product1";
	}
	@RequestMapping("/product2")
	public String ShowProd2()
	{
		return "product2";
	}
	@RequestMapping("/product3")
	public String ShowProd3()
	{
		return "product3";
	}
	@RequestMapping("/aboutus")
	public String ShowAboutUs()
	{
		return "aboutus";
	}
	@RequestMapping("/viewproducts")
	public String ShowViewProducts()
	{
		return "viewproducts";
	}
	@RequestMapping("/home")
	public String ShowHom()
	{
		return "home";
	}

}
