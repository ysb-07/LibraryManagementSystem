package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.model.returned_books;

@Repository
public interface returned_booksRepository extends JpaRepository<returned_books, Integer>{

}
