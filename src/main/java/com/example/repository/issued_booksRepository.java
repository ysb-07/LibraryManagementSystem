package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.model.issued_books;

@Repository
public interface issued_booksRepository extends JpaRepository<issued_books, Integer>{

}
