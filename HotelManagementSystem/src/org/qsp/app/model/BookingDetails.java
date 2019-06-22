package org.qsp.app.model;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: JpaBookingDetails
 *
 */
@Entity

public class BookingDetails implements Serializable {

	@Id
	private String bookingId;
	private String roomId;
	private String userId;
	private String bookedFromDate;
	private String bookedToDate;
	private int noOfAdults;
	private int noOfChild;
	private int amount;
	private String hotelId;
	
	
	
	
	public String getHotelId() {
		return hotelId;
	}


	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}


	public String getBookingId() {
		return bookingId;
	}


	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
	}


	public String getRoomId() {
		return roomId;
	}


	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getBookedFromDate() {
		return bookedFromDate;
	}


	public void setBookedFromDate(String bookedFromDate) {
		this.bookedFromDate = bookedFromDate;
	}


	public String getBookedToDate() {
		return bookedToDate;
	}


	public void setBookedToDate(String bookedToDate) {
		this.bookedToDate = bookedToDate;
	}


	public int getNoOfAdults() {
		return noOfAdults;
	}


	public void setNoOfAdults(int noOfAdults) {
		this.noOfAdults = noOfAdults;
	}


	public int getNoOfChild() {
		return noOfChild;
	}


	public void setNoOfChild(int noOfChild) {
		this.noOfChild = noOfChild;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}
;
	@Override
	public String toString() {
		return "BookingDetails [bookingId=" + bookingId + ", roomId=" + roomId + ", userId=" + userId
				+ ", bookedFromDate=" + bookedFromDate + ", bookedToDate=" + bookedToDate + ", noOfAdults=" + noOfAdults
				+ ", noOfChild=" + noOfChild + ", amount=" + amount + ", hotelId=" + hotelId + "]";
	}
}
