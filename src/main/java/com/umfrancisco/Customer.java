package com.umfrancisco;

public class Customer {
	private int id;
	private String name;
	private String email;
	
	public Customer(int id, String name, String email) {
		this.id = id;
		this.name = name;
		this.email = email;
	}
	
	@Override
	public String toString() {
		return name+" ("+email+")";
	}
}
