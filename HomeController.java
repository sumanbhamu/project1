package com.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/* @controller is an anotation to specify a class that it's a controller*/
@Controller
public class HomeController {
	/*
	 * @ReqMapping is an anotation to specify the link(i.e same as href) "/"
	 * indicates any req from view(front end)
	 * 
	 * @ReqMapping("/") indicates to the home page(i.e home.jsp) here return
	 * value is our view pages(in the following case we r referring to the home
	 * page
	 */

	@RequestMapping("/")
	public String ShowHome() {
		return "home";
	}
	/*
	 * @ReqMapping("/login") indicates link to the login page (i.e if user
	 * clicks on login then it refer to this method
	 */

	@RequestMapping("/login")
	public String ShowLogin() {
		return "login";
	}
	/* @ReqMapping("/register") indicates link to the register page */

	@RequestMapping("/register")
	public String ShowRegister() {
		return "register";
	}
	/* @ReqMapping("/product1") indicates link to the product1 page */

	@RequestMapping("/product1")
	public String ShowProd1() {
		return "product1";
	}
	/* @ReqMapping("/product2") indicates link to the product2 page */

	@RequestMapping("/product2")
	public String ShowProd2() {
		return "product2";
	}
	/* @ReqMapping("/product3") indicates link to the product3 page */

	@RequestMapping("/product3")
	public String ShowProd3() {
		return "product3";
	}
	/* @ReqMapping("/aboutus") indicates link to the about us page */

	@RequestMapping("/aboutus")
	public String ShowAboutUs() {
		return "aboutus";
	}
	/* @ReqMapping("/viewproducts") indicates link to the viewproducts page */

	@RequestMapping("/viewproducts")
	public String ShowViewProducts() {
		return "viewproducts";
	}
	/* @ReqMapping("/home") indicates link to the home page */

	@RequestMapping("/home")
	public String ShowHom() {
		return "home";
	}

	/*@ReqMapping("/validate") indicates link to the validate method 

	- ModelAndView{MV}(it's a class and we use it's object in return(bcz here obj refers to page))
	  is to get the page and data simultaneously.
    - @reqparam is a parameter used to get requested data from view and the
	  parameter passed is same as the name given to the input tags.
	- therefore, our value(ex: ema1) is stored in the s1 .
	- addObject is a method in the MV it should pass 2 parameters(i.e "key" and value) 
	  key is similar to the variable name */
	
	@RequestMapping("/validate")
	public ModelAndView checkUser(@RequestParam("ema1") String s1, @RequestParam("psd") String s2)
	{
		String message;
		ModelAndView mv;
		if (s1.equals("suman@gmail.com") && s2.equals("sa")) {
			message = "valid";
			mv = new ModelAndView("home");
			mv.addObject("info", message);
		} else {
			message = "Entered details are In-valid,Please try again ";
			mv = new ModelAndView("login");
			mv.addObject("info",message);

		}
		return mv;
	}
	/*
	 *By using java to check if details r valid or not
	 * PrintWriter is used to display details on web
	 * 
	 * @RequestMapping("/validate")
	 * public void checkUser(HttpServletRequest req,HttpServletResponse res) throws IOException 
	 * { //PrintWriter out=res.getWriter();
	 * String s1=req.getParameter("ema1"); 
	 * String s2=req.getParameter("psd");
	 * if(s1.equals("suman@gmail.com")&&s2.equals("suman")) {
	 * out.println("valid"); } else { out.println("not valid"); }
	 * 
	 * }
	 */
}
