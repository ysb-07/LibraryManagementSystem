package com.example.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.exception.ResourceNotFoundException;
import com.example.model.books;
import com.example.model.users;
import com.example.repository.booksRepository;

import com.example.services.booksService;
import com.example.services.usersService;

@Controller
//@RequestMapping(value="/library")								// used to add product(keyword) in url eg.(http://localhost:8085/SpringMVC/product/home)
public class FrontController {
	
	
	@Autowired  // injecting the functionality without instantiating
	private booksService bookServe;
	
	@Autowired  // injecting the functionality without instantiating
	private usersService userServe;
	
	static List<books> book=new ArrayList<>();
	static List<users> user=new ArrayList<>();
	
	
	@GetMapping(value="/home")
	public String welcome()
	{
		return "welcome";
	}
	
	
	@RequestMapping(value="/adminhome", method=RequestMethod.GET)
	public String adminhome()
	{
		return "adminhome";
	}
	
	@RequestMapping(value="/userhome", method=RequestMethod.GET)
	public String justfun()
	{
		return "userhome";
	}
	 
	@RequestMapping(value="/adminlogin", method=RequestMethod.GET)
	public String showLoginPage(ModelMap model)
	{
		return "adminlogin";
	}

	
	@RequestMapping(value="/userlogin", method=RequestMethod.GET)
	public String userlogin()
	{
		return "userlogin";
	}
	
	
	 @RequestMapping("/books")
	public ModelAndView getBooks1()
	{
		ModelAndView mv=new ModelAndView("books");
		List<books> bo = bookServe.getBooks();
		
		mv.addObject("totalbooks",bo);
		
		return mv;
	}
	
	 
	 @RequestMapping("/books/{id}")
	public books getBooks(@PathVariable int id) throws ResourceNotFoundException
		{
		 books result=null;
		 
		 result = bookServe.getBook(id);
		 if(result!=null)
		 {
			 return bookServe.getBook(id);
		 }
		 else
		 {
			 throw new ResourceNotFoundException("Book not found "+id);
		 }
		 
		}
	 
	 
	 /*
	@RequestMapping("/books/{id}")
	public books getBooks(@PathVariable(value="id") int bid, @RequestBody books bks)
	{
		books bs=null;
		try
		{
			bs= bookServe.getBook(bid).orElseThrow(()->new ResourceNotFoundException("Book not found "+bid));
		}
		catch (ResourceNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	/*
	 * 
	 * @RequestMapping("/books/{id}")
	public books getBooks(@PathVariable int id)
	{
		return bookServe.getBook(id);
	}
	 */
	
	@RequestMapping("/users")
	public ModelAndView getUsers()
	{
		ModelAndView mv=new ModelAndView("users");
		List<users> us = userServe.getUsers();
		mv.addObject("totalusers",us);
		
		return mv;
	}
	 
	 @RequestMapping(value="/userlist", method=RequestMethod.GET)
		public String i()
		{
			return "userlist";
		}

		
	@RequestMapping(value="/bookdetails", method=RequestMethod.GET)
		public String e()
		{
			return "bookdetails";
		}
	
	 @RequestMapping(value="/user", method=RequestMethod.GET)
		public String g()
		{
			return "user";
		}
	 
	 @RequestMapping(value="/admin", method=RequestMethod.GET)
		public String b()
		{
			return "admin";
		}
	 
	@RequestMapping("/users/{id}")
	public users getUsers(@PathVariable int id)
	{
		return userServe.getUser(id);
	}
	
	
	// Issued Books
	@RequestMapping(value="/issuedbooks", method=RequestMethod.GET)
	public String j()
	{
		return "issuedbooks";
	}
	
	

	// Available Books
	@RequestMapping(value="/availablebooks", method=RequestMethod.GET)
	public String availablebooks()
	{
		return "availablebooks";
	}
	
	
	// Issue new book 
	@RequestMapping(value="/issuenewbook", method=RequestMethod.GET)
	public String k()
	{
		return "issuenewbook";
	}
	
	@RequestMapping(value="/issuenewbook1", method=RequestMethod.GET)
	public String l()
	{
		return "issuenewbook1";
	}
	
	
	// Return Book
	@RequestMapping(value="/returnbook", method=RequestMethod.GET)
	public String returnook()
	{
		return "returnbook";
	}
	
	@RequestMapping(value="/returnbook1", method=RequestMethod.GET)
	public String returnook1()
	{
		return "returnbook1";
	}
	
	
	// Issue History
	@RequestMapping(value="/issuehistory", method=RequestMethod.GET)
	public String issuehistory()
	{
		return "issuehistory";
	}
		
	@RequestMapping(value="/issuehistory1", method=RequestMethod.GET)
	public String issuehistory1()
	{
		return "issuehistory1";
	}
		
		
	@RequestMapping(value="/errors", method=RequestMethod.GET)
	public String c()
	{
		return "errors";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String d()
	{
		return "logout";
	}
	
	
}
