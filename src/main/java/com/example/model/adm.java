package com.example.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class adm {
	
	@Id
	int UID;
	String USERNAME;
	String PASSWORD1;
	
	
	public int getUID() {
		return UID;
	}
	public void setUID(int uID) {
		UID = uID;
	}
	public String getUSERNAME() {
		return USERNAME;
	}
	public void setUSERNAME(String uSERNAME) {
		USERNAME = uSERNAME;
	}
	public String getPASSWORD1() {
		return PASSWORD1;
	}
	public void setPASSWORD1(String pASSWORD1) {
		PASSWORD1 = pASSWORD1;
	}
	
	
	public adm(int uID, String uSERNAME, String pASSWORD1) {
		super();
		UID = uID;
		USERNAME = uSERNAME;
		PASSWORD1 = pASSWORD1;
	}
	
	public adm() {
		super();
	}
	
	@Override
	public String toString() {
		return "adm [UID=" + UID + ", USERNAME=" + USERNAME + ", PASSWORD1=" + PASSWORD1 + "]";
	}
	
}
