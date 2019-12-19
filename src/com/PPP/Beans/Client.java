package com.PPP.Beans;

import java.util.Date;

import com.sun.prism.Image;

public class Client {
	private int id;
	private String name;
	private String lastname;
	private String email;
	private String motdepasse;
	private String image;
	private String description ;
	private Date date_inscription;
	private String user_name;
	
	public Client(String name,String lastname) {
		this.name=name;
		this.lastname=lastname;
		
	}
	public Client(String name,String lastname,String email,String motdepasse,String user_name) {
		this.name=name;
		this.lastname=lastname;
		this.email=email;
		this.motdepasse=motdepasse;
		this.user_name=user_name;
		
	}
	public Client(String name,String lastname,String email,String motdepasse,String user_name,String description) {
		this.name=name;
		this.lastname=lastname;
		this.email=email;
		this.motdepasse=motdepasse;
		this.user_name=user_name;
		this.description=description;
	}
	public Client (String name,String lastname,String email,String motdepasse,String user_name,String description,String image) {
		this.name=name;
		this.lastname=lastname;
		this.email=email;
		this.motdepasse=motdepasse;
		this.user_name=user_name;
		this.description=description;
		this.image=image;
	}
	public String getname() {
		return name;
	}
	public String getlastname() {
		return lastname;
	}
	public String getemail() {
		return email;
	}
	public String getmotdepasse() {
		return motdepasse;
	}
	public String getuser_name() {
		return user_name;
	}
	public String getdescription() {
		return description;
	}
	
	
	
	
	public void setname(String name) {
		this.lastname=name;
	}
	public void stelastname(String lastname) {
		this.lastname=lastname;
	}
	public void setemail(String email) {
		this.email=email;
	}
	public void setmotdepasse(String motdepasse) {
		this.motdepasse=motdepasse;
	}
	public void setuser_name(String user_name) {
		this.user_name=user_name;
	}
	public void setdescription(String description) {
		this.description=description;
	}
  
}

