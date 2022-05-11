package com.example.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class returned_books {
	
	@Id
	int rid;
	int iid;
	int bid;
	int uid;
	String book_name;
	Date issue_date;
	Date return_date;
	int fine;
	
	
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getIid() {
		return iid;
	}
	public void setIid(int iid) {
		this.iid = iid;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public Date getIssue_date() {
		return issue_date;
	}
	public void setIssue_date(Date issue_date) {
		this.issue_date = issue_date;
	}
	public Date getReturn_date() {
		return return_date;
	}
	public void setReturn_date(Date return_date) {
		this.return_date = return_date;
	}
	public int getFine() {
		return fine;
	}
	public void setFine(int fine) {
		this.fine = fine;
	}
	
	public returned_books(int rid, int iid, int bid, int uid, String book_name, Date issue_date, Date return_date,
			int fine) {
		super();
		this.rid = rid;
		this.iid = iid;
		this.bid = bid;
		this.uid = uid;
		this.book_name = book_name;
		this.issue_date = issue_date;
		this.return_date = return_date;
		this.fine = fine;
	}
	
	public returned_books() {
		super();
	}
	
	@Override
	public String toString() {
		return "returned_books [rid=" + rid + ", iid=" + iid + ", bid=" + bid + ", uid=" + uid + ", book_name="
				+ book_name + ", issue_date=" + issue_date + ", return_date=" + return_date + ", fine=" + fine + "]";
	}
	
	
}
