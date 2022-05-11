package com.example.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.users;
import com.example.repository.usersRepository;



@Service
public class usersService {
	
	@Autowired
	private usersRepository userrepo;
	
	
	public List<users> getUsers()
	{
		List<users> posts=new ArrayList<>();
		for(users user:userrepo.findAll())
		{
			posts.add(user);
		}
		return posts;
	}
	
	public users getUser(int id)
	{
		return userrepo.findById(id).get();
	}
	
	public Boolean existsByUserAndPassword(String name, String password)
	{
		return userrepo.CheckUserPass(name, password);
	}

}
