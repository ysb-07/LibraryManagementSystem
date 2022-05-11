package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.model.users;

@Repository
public interface usersRepository extends JpaRepository<users, Integer>{
	
	@Query(value="select u from users u where u.USERNAME='name' and u.PASSWORD1='password'",nativeQuery = true)
	public boolean CheckUserPass(String name,String password);
	
	
}
