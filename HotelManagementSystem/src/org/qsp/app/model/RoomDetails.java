package org.qsp.app.model;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;


@Entity
public class RoomDetails implements Serializable {

	
	private String hotelId;
	@Id
	private String roomId;
	private int roomNumber;
	private String roomType;
	private int perNightRate;
	private String availability;
	
	
	
	
	public String getHotelId() {
		return this.hotelId;
	}

	public void setHotelId(String hotelId) {
		this.hotelId = hotelId;
	}   
	public String getRoomId() {
		return this.roomId;
	}

	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}   
	public int getRoomNumber() {
		return this.roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}   
	public String getRoomType() {
		return this.roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}   
	public int getPerNightRate() {
		return this.perNightRate;
	}

	public void setPerNightRate(int costPerNight) {
		this.perNightRate = costPerNight;
	}   
	public String getAvailability() {
		return this.availability;
	}

	public void setAvailability(String availability2) {
		this.availability = availability2;
	}
	@Override
	public String toString() {
		return "JpaRoomDetails [hotelId=" + hotelId + ", roomId=" + roomId + ", roomNumber=" + roomNumber
				+ ", roomType=" + roomType + ", perNightRate=" + perNightRate + ", availability=" + availability + "]";
	}
   
	
}
