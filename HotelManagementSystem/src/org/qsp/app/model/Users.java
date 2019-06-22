package org.qsp.app.model;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: JpaUsers
 *
 */
@Entity

public class Users implements Serializable {

	@Id
	private String userId;
	private String password;
	private String role;
	private String userName;
	private String mobileNumber;
	private String address;
	private String email;

	
	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}   
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}   
	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}   
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}   
	public String getMobileNumber() {
		return this.mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}   
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}   
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "JpaUsers [userId=" + userId + ", password=" + password + ", role=" + role + ", userName=" + userName
				+ ", mobileNumber=" + mobileNumber + ", address=" + address + ", email=" + email + "]";
	}
}

