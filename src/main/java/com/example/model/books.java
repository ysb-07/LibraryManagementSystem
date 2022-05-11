package com.example.model;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class books {
	
	@Id
	int bid;
	String book_name;
	String book_author;
	int book_price;
	String book_status;
	
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public String getBook_status() {
		return book_status;
	}
	public void setBook_status(String book_status) {
		this.book_status = book_status;
	}
	
	public books(int bid, String book_name, String book_author, int book_price, String book_status) {
		super();
		this.bid = bid;
		this.book_name = book_name;
		this.book_author = book_author;
		this.book_price = book_price;
		this.book_status = book_status;
	}
	
	public books() {
		super();
	}
	
	@Override
	public String toString() {
		return "books [bid=" + bid + ", book_name=" + book_name + ", book_author=" + book_author + ", book_price="
				+ book_price + ", book_status=" + book_status + "]";
	}
	
}
