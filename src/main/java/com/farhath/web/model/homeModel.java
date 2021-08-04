package com.farhath.web.model;

public class homeModel {
	public String property_type,area;
	public int beds,bathrooms,price;
	
	public homeModel(String property_type, String area, int beds, int bathrooms, int price) {
		this.property_type = property_type;
		this.area = area;
		this.beds = beds;
		this.bathrooms = bathrooms;
		this.price = price;
	}

	public String getProperty_type() {
		return property_type;
	}

	public String getArea() {
		return area;
	}

	public int getBeds() {
		return beds;
	}

	public int getBathrooms() {
		return bathrooms;
	}

	public int getPrice() {
		return price;
	}
	
}
