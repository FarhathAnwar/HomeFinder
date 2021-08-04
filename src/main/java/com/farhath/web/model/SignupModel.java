package com.farhath.web.model;

public class SignupModel {
	public String fname, lname, address, credit_card, gender, phone, email, password;
	
	public SignupModel(String fname,String lname,String address,String credit_card,String gender,String phone,String email,String password){
		setFname(fname);
		setLname(lname);
		setAddress(address);
		setCredit_card(credit_card);
		setGender(gender);
		setPhone(phone);
		setEmail(email);
		setPassword(password);
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCredit_card() {
		return credit_card;
	}

	public void setCredit_card(String credit_card) {
		this.credit_card = credit_card;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
