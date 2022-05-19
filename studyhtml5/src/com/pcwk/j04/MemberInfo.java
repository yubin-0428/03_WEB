package com.pcwk.j04;

public class MemberInfo {
	
	private String id; // 회원ID
	private String password; // 회원비번
	private String name; // 이름
	private String registerDate; // 가입일
	private String email; // 이메일
	
	public MemberInfo() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "MemberInfo [id=" + id + ", password=" + password + ", name=" + name + ", registerDate=" + registerDate
				+ ", email=" + email + "]";
	}
	
	
}