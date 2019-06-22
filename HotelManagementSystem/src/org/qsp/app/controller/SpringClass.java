package org.qsp.app.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.qsp.app.model.BookingDetails;
import org.qsp.app.model.Hotel;
import org.qsp.app.model.JpaMainClass;
import org.qsp.app.model.RoomDetails;
import org.qsp.app.model.Users;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SpringClass {
	JpaMainClass main = new JpaMainClass();

	@RequestMapping("/view/registration")
	public ModelAndView registration(@RequestParam("user") String userName, @RequestParam("address") String address,
			@RequestParam("num") String mobileNumber, @RequestParam("mail") String mailId,
			@RequestParam("uId") String userId, @RequestParam("pwd") String password,
			@RequestParam("role") String role) {
		ModelAndView modelAndView = null;
		boolean status = main.insert_info(userName, address, mobileNumber, mailId, userId, password, role);
		if (status) {
			modelAndView = new ModelAndView("Home", "success", "Registration is successfully, please login ");
			return modelAndView;
		} else {
			modelAndView = new ModelAndView("Home", "fail", "Registration is failed, please try again");
		}
		return modelAndView;

	}

	@RequestMapping("/view/loginValidation")
	public ModelAndView loginValidation(@RequestParam("user") String userId, @RequestParam("pwd") String password) {

		try {
			String status = main.adminLoginValidation(userId, password);
			if (status.equals("admin")) {
				return new ModelAndView("AfterAdminLogin");
			} else if(status.equals("customer")) {
				return new ModelAndView("HomePageOfUser");
			}
			else {
				return new ModelAndView("Home", "fail", "Login is failed, please try again");
			}
		} catch (Exception e) {
			return new ModelAndView("Home", "fail", "Login is failed, please try again");
		}
	}

	@RequestMapping("/view/addHotels")
	public ModelAndView addHotels(@RequestParam("hname") String hotelName, @RequestParam("city") String hotelCity,
			@RequestParam("add") String hotelAddress, @RequestParam("Description") String description,
			@RequestParam("num") int costPerNight, @RequestParam("num1") String number1,
			@RequestParam("num2") String number2, @RequestParam("rate") int rating, @RequestParam("mail") String mailId,
			@RequestParam("fax") String fax) {
		try {
			String status = main.addHotels(hotelName, hotelCity, hotelAddress, description, costPerNight, number1,
					number2, rating, mailId, fax);
			return new ModelAndView("AddHotel", "identifier", "Successfully Added");
		} catch (Exception e) {
			return new ModelAndView("AddHotel", "identifier", "Please try again");
		}
	}

	@RequestMapping("/view/addRoom")
	public ModelAndView addRoom(@RequestParam("hoId") String hotelId, @RequestParam("rnum") int roomNumber,
			@RequestParam("rType") String roomType, @RequestParam("cost") int costPerNight,
			@RequestParam("yes") String availability) {
		try {
			boolean status = main.addRooms(hotelId, roomNumber, roomType, costPerNight, availability);
			return new ModelAndView("AddRoom", "identifier", "SuccessfullyAdded");
		} catch (Exception e) {
			return new ModelAndView("AddRoom", "identifier", "Please enter valid hotel id");
		}

	}

	@RequestMapping("/view/modifyHotel")
	public ModelAndView modifyHotel(@RequestParam("user") String hotelId, @RequestParam("hname") String hotelName,
			@RequestParam("city") String hotelCity, @RequestParam("add") String hotelAddress,
			@RequestParam("Description") String description, @RequestParam("num") int costPerNight,
			@RequestParam("num1") String number1, @RequestParam("num2") String number2,
			@RequestParam("rate") int rating, @RequestParam("mail") String mailId, @RequestParam("fax") String fax)

	{
		try {
			boolean status = main.modifyHotel(hotelId, hotelName, hotelCity, hotelAddress, description, costPerNight,
					number1, number2, rating, mailId, fax);
			return new ModelAndView("ModifyHotel", "identifier", "SuccessfullyModified");
		} catch (Exception e) {
			return new ModelAndView("ModifyHotel", "identifier", "please enter valid hotel id or room id");
		}

	}

	@RequestMapping("/view/modifyRoom")
	public ModelAndView modifyRoom(@RequestParam("user") String roomId, @RequestParam("yes") String availability)

	{

		boolean status = main.modifyRoom(roomId, availability);
		if (status) {
			return new ModelAndView("ModifyRoom", "identifier", "Successfully Modified");
		} else {
			return new ModelAndView("ModifyRoom", "identifier", "please enter valid Room Id");
		}
	}

	@RequestMapping("/view/deleteRoom")
	public ModelAndView deleteRoom(@RequestParam("user") String roomId) {
		try {
		boolean status = main.deleteRoom(roomId);
			return new ModelAndView("DeleteRoom", "identifier", "SuccessfullyDeleted");
		}
		catch(Exception e) {
			return new ModelAndView("DeleteRoom", "identifier", "Please Enter valid Room ID");
		}

	}

	@RequestMapping("/view/deleteHotel")
	public ModelAndView deleteHotel(@RequestParam("user") String hotelId) {
		
		try {
			boolean status=main.deleteHotel(hotelId);
			return  new ModelAndView("DeleteHotel", "identifier", "Successfully Deleted");
		}
		catch(Exception e) {
			return  new ModelAndView("DeleteHotel", "identifier", "Hotel Id is not present");
		}
	}

	@RequestMapping("/view/searchForHotels")
	public ModelAndView searchForHotels(@RequestParam("city1") String cityName) {
		List<Hotel> hotels = main.searchForHotels(cityName);
		
		ModelAndView modelAndView = new ModelAndView("ListOfAvalibleHotels", "hotels", hotels);
		return modelAndView;
	}

	@RequestMapping("/view/bookHotels")
	public ModelAndView bookHotels(@RequestParam("hotelId") String hotelId) {
		try {
			List<RoomDetails> rooms = main.bookHotels(hotelId);
			System.out.println(rooms);

			if (rooms.size() != 0) {
				return new ModelAndView("ListAvalibleRooms", "Rooms", rooms);
			} else {
				return new ModelAndView("BookHotel", "Rooms", "no Rooms are avalible");
			}
		} catch (Exception e) {
			return new ModelAndView("BookHotel", "Rooms", "Please Enter Valid hotel Id");
		}

	}

	@RequestMapping("/view/confirmBooking")
	public ModelAndView confirmBooking(@RequestParam("user") String hotelId, @RequestParam("user1") String roomId,
			@RequestParam("address") int roomNumber, @RequestParam("num") String roomType,
			@RequestParam("fromDate") String fromDate, @RequestParam("toDate") String toDate,
			@RequestParam("uId") int numAdults, @RequestParam("pwd") int numChild) {
		
		if(hotelId==null) {
			return new ModelAndView("ConfirmBooking", "Rooms", "Please go back and select the hotel");
		}
		
		boolean status =  main.confirmBooking(hotelId, roomId, roomNumber, roomType, fromDate, toDate, numAdults,numChild);;
		if(status) {
			
			return new ModelAndView("ConfirmBooking", "Rooms", "Booking has Confirmed, please check in Booking status");
		}else {
			return new ModelAndView("ConfirmBooking", "Rooms", "Please select valid date");
		}
		
	}

	@RequestMapping("/view/hotelStatus")
	public ModelAndView hotelStatus() {
		try {
			List<BookingDetails> status = main.hotelStatus();
			return new ModelAndView("ViewBookingStatus", "identifier", status);
		} catch (Exception e) {
			return new ModelAndView("ViewBookingStatus", "identifier", "No Bookings");
		}
	}

	@RequestMapping("/view/getHotels")
	public ModelAndView getHotels(@RequestParam("city") String city) {
		try {
			List<Hotel> list = JpaMainClass.getHotels(city);
			return new ModelAndView("ListOfHotels", "Hotels", list);
		} catch (Exception e) {
			return new ModelAndView("ListOfHotels", "Hotels", "Sorry no hotels were listed");
		}
	}
	
	@RequestMapping("/view/getBookingsList")
	public ModelAndView getBookingsList(@RequestParam("date") String date) {
		try {
			List<BookingDetails> listOfBooking = JpaMainClass.getBookingList(date);
			return new ModelAndView("ListOfBooking", "BookingList", listOfBooking);
		} catch (Exception e) {
			return new ModelAndView("ListOfBooking", "NoBookings", "Sorry Booking are there in this date");
		}
	}
	
	@RequestMapping("/view/getBookingOnHotel")
	public ModelAndView getBookingOnHotel(@RequestParam("id") String hotelid) {
		try {
		List<BookingDetails> listOfBookingOnHotel=JpaMainClass.getBookingOnHotel(hotelid);
		return new ModelAndView("ViewBookingOnSpecificHotel","BookingList",listOfBookingOnHotel);
		} catch(Exception e) {
			return new ModelAndView("ViewBookingOnSpecificHotel","BookingList","No Bookings are avalible on this hotel");
		}
	}
	
	@RequestMapping("/view/guestListOfHotel")
	public ModelAndView guestListOfHotel(@RequestParam("user") String user) {
		try {
		Set<Users> guestListOfhotel=JpaMainClass.guestListOfHotel(user);
		System.out.println(guestListOfhotel+"set");
		List<Users> guestList=new ArrayList<>(guestListOfhotel.size());
		for(Users users:guestListOfhotel) {
			guestList.add(users);
		}
		return new ModelAndView("GuestListOfSpecificHotel","GuestList",guestList);
		} catch(Exception e) {
			return new ModelAndView("GuestListOfSpecificHotel","GuestList","No Users were there in this hotel");
		}
	}
}
