package com.javatpoint.bean;

public class User {
private int contact_no;
	private String name,child,email_id,address,first_name,last_name,cno,orphanage;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getChild() {
		return child;
	}
	public void setChild(String child) {
		this.child = child;
	}
	
	public String getlast_name(){
		return last_name;
	}
	public void setlast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getemail() {
		return email_id;
	}
	public void setemail(String email_id) {
		this.email_id = email_id;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	public int getContact_no() {
		return contact_no;
	}
	public void setContact_no(int contact_no) {
		this.contact_no = contact_no;
	}
	public String getfirst_name() {
		return first_name;
	}
	public void setfirst_name(String first_name) {
		this.first_name = first_name;
	}
	public void setcno(String cno) {
		this.cno = cno;
	}
	public String getcno() {
		return cno;
	}
	public String getOrphanage() {
		return orphanage;
	}
	public void setOrphanage(String orphanage) {
		this.orphanage = orphanage;
	}
	
}
