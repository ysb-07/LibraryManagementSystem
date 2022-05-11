package com.example.model;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class issued_books {
	
	@Id
	int IID;
	int UID;
	int BID;
	String book_name;
	Date ISSUED_DATE;
	int PERIOD;
	String book_status;
	
	
	public int getIID() {
		return IID;
	}
	
	public void setIID(int iID) {
		IID = iID;
	}
	
	public int getUID() {
		return UID;
	}
	
	public void setUID(int uID) {
		UID = uID;
	}
	
	public int getBID() {
		return BID;
	}
	
	public void setBID(int bID) {
		BID = bID;
	}
	
	public String getBook_name() {
		return book_name;
	}
	
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	
	public Date getISSUED_DATE() {
		return ISSUED_DATE;
	}
	
	public void setISSUED_DATE(Date iSSUED_DATE) {
		ISSUED_DATE = iSSUED_DATE;
	}
	
	public int getPERIOD() {
		return PERIOD;
	}
	
	public void setPERIOD(int pERIOD) {
		PERIOD = pERIOD;
	}
	public String getBook_status() {
		return book_status;
	}
	
	public void setBook_status(String book_status) {
		this.book_status = book_status;
	}
	
	
	public issued_books(int iID, int uID, int bID, String book_name, Date iSSUED_DATE, int pERIOD, String book_status) {
		super();
		IID = iID;
		UID = uID;
		BID = bID;
		this.book_name = book_name;
		ISSUED_DATE = iSSUED_DATE;
		PERIOD = pERIOD;
		this.book_status = book_status;
	}
	
	
	public issued_books() {
		super();
	}
	
	
	@Override
	public String toString() {
		return "issued_books [IID=" + IID + ", UID=" + UID + ", BID=" + BID + ", book_name=" + book_name
				+ ", ISSUED_DATE=" + ISSUED_DATE + ", PERIOD=" + PERIOD + ", book_status=" + book_status + "]";
	}
	
	
}
