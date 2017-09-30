package com.copasso.crud.bean;

public class User {
	private Integer userId;

	private String name;

	private String password;

	public User() {
		super();
	}

	public User(String name,String password) {
		super();
		this.password = password;
		this.name = name;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}
}