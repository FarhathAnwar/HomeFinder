package com.farhath.web.model;

public class loginModel {
	
	public String username , pass;
	
	public loginModel(String username , String pass){
		setUsername(username);
		setPass(pass);
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
}
