package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.model.adm;

@Repository
public interface admRepository extends JpaRepository<adm, Integer>{

}
