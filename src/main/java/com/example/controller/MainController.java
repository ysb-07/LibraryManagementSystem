package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.model.books;
import com.example.repository.booksRepository;

@RestController
//@RequestMapping(value="/library")								// used to add product(keyword) in url eg.(http://localhost:8085/SpringMVC/product/home)
public class MainController {
	
	
	@Autowired  // injecting the functionality without instantiating
	private booksRepository repo;
	
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String a()
	{
		return "login";
	}
	
	
}
