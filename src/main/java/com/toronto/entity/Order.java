package com.toronto.entity;


public class Order {

	private String name;
	private String address;
	private String email;
	private String phone_number;
	private String pizza_type;
	private int pizza_size;
	private int number_of_pizza;
	private String discount_coupon;
	private Double total;
	
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public String getPizza_type() {
		return pizza_type;
	}
	public void setPizza_type(String pizza_type) {
		this.pizza_type = pizza_type;
	}
	public int getPizza_size() {
		return pizza_size;
	}
	public void setPizza_size(int pizza_size) {
		this.pizza_size = pizza_size;
	}
	public int getNumber_of_pizza() {
		return number_of_pizza;
	}
	public void setNumber_of_pizza(int number_of_pizza) {
		this.number_of_pizza = number_of_pizza;
	}
	public String getDiscount_coupon() {
		return discount_coupon;
	}
	public void setDiscount_coupon(String discount_coupon) {
		this.discount_coupon = discount_coupon;
	}
	
	
}
