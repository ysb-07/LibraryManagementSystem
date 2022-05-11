package com.example.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.books;
import com.example.repository.booksRepository;


@Service
public class booksService {
	
	@Autowired							// injecting the functionality without instantiating
	private booksRepository bookrepo;
	
	
	public List<books> getBooks()
	{
		List<books> custs=new ArrayList<>();
		for(books cust:bookrepo.findAll())
		{
			custs.add(cust);
		}
		return custs;
	}
	
	public books getBook(int id)
	{
		return bookrepo.findById(id).get();
	}

}
