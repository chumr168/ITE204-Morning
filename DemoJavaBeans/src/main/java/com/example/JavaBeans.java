package com.example;

import java.io.Serializable;


//1st rule: must implement Serializable
public class JavaBeans implements Serializable {
	
	private static final long serialVersionUID = 1L;
	//2nd rule: data member/properties must be private
	
	private int id;
	private String firstName;
	private String lastName;
	private String gender;
	
	//3rd rule: must have no-argument constructor
	public JavaBeans()
	{
		//no argument
	}

	
	public JavaBeans(int id, String firstName, String lastName, String gender) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
	}


	public JavaBeans(String firstName, String lastName, String gender) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	

}
