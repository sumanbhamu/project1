package com.frontend.controller;

import java.io.File;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopping.dao.ProductDAO;
import com.niit.shopping.dao.ProductDAOImpl;
import com.niit.shopping.model.Category;
import com.niit.shopping.model.Product;
import com.niit.shopping.model.Supplier;

@Controller
public class AdminHomeController
{
	@Autowired
	ProductDAO productDAO;
	
	
	
	@RequestMapping("/addsupplier")
	public String ShowAddSupplier() {
		return "addsupplier";
	}
	@RequestMapping("/addcategory")
	public String ShowAddCategory() {
		return "addcategory";
	}
	
	@RequestMapping("/logout")
	public String Showlogout() {
		return "logout";
	}


	/*-----------Supplier------------------*/
	@RequestMapping("/supplier")
	public ModelAndView ShowSupplier(@ModelAttribute("supp")Supplier supp,
			BindingResult result,HttpServletRequest request)
	{
		ModelAndView  mv=new ModelAndView("supplier");
		return mv;
	}
	
	
	
	/*-----------Category------------------*/
	@RequestMapping("/category")
	public ModelAndView ShowCategory(@ModelAttribute("cat")Category cat,
			BindingResult result,HttpServletRequest request)
	{
		ModelAndView  mv=new ModelAndView("category");
		return mv;
	}
	
	/*-----------Product------------------*/
	@RequestMapping("/product")
	public ModelAndView ShowCategory(@ModelAttribute("prd")Product prd,
			BindingResult result,HttpServletRequest request)
	{
		ModelAndView  mv=new ModelAndView("product");
		return mv;
	}

	@ModelAttribute
	public Product returnObject()
	{
		return new Product();
		
	}
	@RequestMapping(value="/addproduct",method=RequestMethod.POST)
	public String ShowAddProduct(@Valid @ModelAttribute("product")Product product,Model model,BindingResult result,HttpServletRequest request)throws IOException
	{
		System.out.println(product.getProd_name());
		System.out.println("image uploaded");
		System.out.println("myproduct controller called");
		MultipartFile image=product.getImg();
		Path path;/*belong to nio package*/
		path=Paths.get("E:/project1/Clothes/src/main/webapp/resources/images/"+product.getProd_id()+".jpg");
		System.out.println("Path="+path);
		System.out.println("File name"+product.getImg().getOriginalFilename());
		if(image!=null&&!image.isEmpty())
		{
			try
			{
				image.transferTo(new File(path.toString()));
				System.out.println("Image Saved in:"+path.toString());
			}
	 		catch(Exception e)
			{
				e.printStackTrace();
				System.out.println("Image not saved");
			
			}
		}
		productDAO.savOrUpdate(product);
		
		
		return "product";
	}
	
	
	
	
	
}
 