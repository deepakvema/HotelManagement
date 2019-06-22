package org.qsp.app.model;

import java.io.Serializable;
import java.lang.String;
import java.util.List;

import javax.persistence.*;

@Entity

public class Hotel implements Serializable
{
	@Id
	private String hotelId;
	private String city;
	private String hotelName;
	private String address;
	private String description;
	private int averageRatePerRoom;
	private String mobileNumber1;
	private String mobileNumber2;
	private int rating;
	private String email;
	private String fax;
	
	@OneToMany(cascade= CascadeType.ALL, fetch=FetchType.EAGER)
	private  List<BookingDetails> bookingDetails;
	
	@OneToMany(cascade= CascadeType.ALL, fetch=FetchType.EAGER, orphanRemoval=true)
	private List <RoomDetails> roomDetails;
	
	@OneToMany(cascade= CascadeType.ALL, fetch=FetchType.EAGER)
	private List <Users> JpaUsers;
	


	public List<BookingDetails> getBookingDetails() {
		return bookingDetails;
	}

	public void setBookingDetails(List<BookingDetails> bookingDetails) {
		this.bookingDetails = bookingDetails;
	}

	

	public List<RoomDetails> getRoomDetails() {
		return roomDetails;
	}

	public void setRoomDetails(List<RoomDetails> roomDetails) {
		this.roomDetails = roomDetails;
	}

	public List<Users> getJpaUsers() {
		return JpaUsers;
	}

	public void setJpaUsers(List<Users> jpaUsers) {
		JpaUsers = jpaUsers;
	}

	public String getHotelId() {
		return this.hotelId;
	}

	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}   
	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}   
	public String getHotelName() {
		return this.hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}   
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}   
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}   
	public int getAverageRatePerRoom() {
		return this.averageRatePerRoom;
	}

	public void setAverageRatePerRoom(int amount) {
		this.averageRatePerRoom = amount;
	}   
	public String getMobileNumber1() {
		return this.mobileNumber1;
	}

	public void setMobileNumber1(String mobileNumber1) {
		this.mobileNumber1 = mobileNumber1;
	}   
	public String getMobileNumber2() {
		return this.mobileNumber2;
	}

	public void setMobileNumber2(String mobileNumber2) {
		this.mobileNumber2 = mobileNumber2;
	}   
	public int getRating() {
		return this.rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}   
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}   
	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}
	@Override
	public String toString() {
		return "Hotel [hotelId=" + hotelId + ", city=" + city + ", hotelName=" + hotelName + ", address=" + address
				+ ", description=" + description + ", averageRatePerRoom=" + averageRatePerRoom + ", mobileNumber1="
				+ mobileNumber1 + ", mobileNumber2=" + mobileNumber2 + ", rating=" + rating + ", email=" + email
				+ ", fax=" + fax + ", bookingDetails=" + bookingDetails + "]";
	}
   
}
