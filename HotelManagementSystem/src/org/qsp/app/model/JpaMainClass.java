package org.qsp.app.model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class JpaMainClass {
	BookingDetails details = new BookingDetails();
	Hotel hotel = new Hotel();
	RoomDetails roomdetails = new RoomDetails();
	Users user = new Users();
	String gUser, loginUserId;

	public boolean insert_info(String userName, String address, String mobileNumber, String mailId, String userId,
			String password, String role) {
		boolean status = false;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		
		List<Users> list=new ArrayList<>();
		user.setUserId(userId);
		user.setUserName(userName);
		user.setAddress(address);
		user.setEmail(mailId);
		user.setMobileNumber(mobileNumber);
		user.setPassword(password);
		user.setRole(role);
		list.add(user);

		manager.persist(user);
		manager.getTransaction().commit();
		status = true;

		manager.close();
		factory.close();
		
		return status;
	}

	public String adminLoginValidation(String userId, String password) {
		String status = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		try {
			Users adminLogin = manager.find(Users.class, userId);

			if (adminLogin.getUserId().equals(userId) && adminLogin.getPassword().equals(password)) {
				gUser = adminLogin.getUserId();
				if (adminLogin.getRole().equalsIgnoreCase("admin")) {
					status = "admin";
				} else {
					loginUserId=userId;
					status = "customer";
				}
			}
			else {
				status="fail";
			}
		} catch (Exception e) {
			e.printStackTrace();
			status = "fail";
		}
		manager.getTransaction().commit();
		manager.close();
		factory.close();

		return status;

	}

	public String addHotels(String hotelName, String hotelCity, String hotelAddress, String description,
			int costPerNight, String number1, String number2, int rating, String mailId, String fax) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		
		hotel.setAddress(hotelAddress);
		hotel.setAverageRatePerRoom(costPerNight);
		hotel.setCity(hotelCity);
		hotel.setDescription(description);
		hotel.setEmail(mailId);
		hotel.setFax(fax);
		hotel.setHotelName(hotelName);
		hotel.setMobileNumber1(number1);
		hotel.setMobileNumber2(number2);
		hotel.setRating(rating);

		Random random = new Random();
		String hotelId = random.nextInt(10000) + "";
		while(hotelId.length()<4) {
			hotelId=random.nextInt(10000)+"";
		}
		hotel.setHotelId(hotelId);

		manager.persist(hotel);
		manager.getTransaction().commit();
		manager.close();

		return null;
	}

	public boolean addRooms(String hotelId, int roomNumber, String roomType, int costPerNight, String availability) {

		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();

		List<RoomDetails> list=new ArrayList<>();
		Hotel hotel= manager.find(Hotel.class, hotelId);
		if(hotel!=null) {
			Random random = new Random();
			String roomId = random.nextInt(10000) + "";
			while(roomId.length()<4) {
				roomId=random.nextInt(10000)+"";
			}
			roomdetails.setAvailability(availability);
			roomdetails.setRoomNumber(roomNumber);
			roomdetails.setHotelId(hotelId);
			roomdetails.setPerNightRate(costPerNight);
			roomdetails.setRoomId(roomId);
			roomdetails.setRoomType(roomType);
			roomdetails.setAvailability(availability);
			list.add(roomdetails);
			hotel.getRoomDetails().addAll(list);

			manager.persist(hotel);
			manager.persist(roomdetails);
			manager.getTransaction().commit();
			manager.close();
			return true;
		}
		else {
			return false;
		}
		
		
		
	}

	public boolean modifyHotel(String hotelId, String hotelName, String hotelCity, String hotelAddress,
			String description, int costPerNight, String number1, String number2, int rating, String mailId,
			String fax) {

		boolean status = false;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		Hotel hotel1 = manager.find(Hotel.class, hotelId);

		if (hotel1.getHotelId().equals(hotelId)) {
			hotel1.setAddress(hotelAddress);
			hotel1.setAverageRatePerRoom(costPerNight);
			hotel1.setCity(hotelCity);
			hotel1.setDescription(description);
			hotel1.setEmail(mailId);
			hotel1.setFax(fax);
			hotel1.setHotelName(hotelName);
			hotel1.setMobileNumber1(number1);
			hotel1.setMobileNumber2(number2);
			hotel1.setRating(rating);
			status = true;
		}

		manager.getTransaction().commit();
		manager.close();

		return status;
	}

	public boolean modifyRoom(String roomId, String availability) {
		boolean status = false;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		try {
			RoomDetails room = manager.find(RoomDetails.class, roomId);
			if (room.getRoomId().equals(roomId)) {
				room.setAvailability(availability);
				status = true;
			}
		} catch (Exception e) {
			status = false;
		}
		manager.getTransaction().commit();
		manager.close();
		return status;
	}

	public boolean deleteRoom(String roomId) {
		boolean status = false;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		RoomDetails details = manager.find(RoomDetails.class, roomId);
		if (details != null) {
			String hotelId = details.getHotelId();
			Hotel hotelIdRetrive = manager.find(Hotel.class, hotelId);
			List<RoomDetails> listRoom = hotelIdRetrive.getRoomDetails();
			List<RoomDetails> listDelRoom = new ArrayList<>();
			for (RoomDetails details2 : listRoom) {
				if (details2.getRoomId().equals(roomId)) {
					listDelRoom.add(details2);
				}
			}
			listRoom.removeAll(listDelRoom);
			System.out.println("asd" + listDelRoom);
			System.out.println("asd" + listRoom);
			hotelIdRetrive.setRoomDetails(listRoom);
			manager.remove(details);
			manager.getTransaction().commit();
			return status = true;
		} else {
			return status;
		}
	}

	public boolean deleteHotel(String hotelId) {
		boolean status = false;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
			Hotel room = manager.find(Hotel.class, hotelId);
			if (room.getHotelId().equals(hotelId)) {
				manager.remove(room);
				
				manager.getTransaction().commit();
				manager.close();
				return status = true;
			}else {
			return status ;
			}
	}

	public List<Hotel> searchForHotels(String cityName) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();

		String hql = "SELECT H FROM Hotel H WHERE H.city=:cityName";
		Query query = manager.createQuery(hql);
		query.setParameter("cityName", cityName);

		List<Hotel> hotelsList = query.getResultList();
		manager.getTransaction().commit();
		return hotelsList;
	}

	public List<RoomDetails> bookHotels(String hname) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();

		List<RoomDetails> resultList= new ArrayList<>();
		Query query = manager.createQuery("SELECT R FROM RoomDetails R WHERE R.hotelId=:hotelId ").setParameter("hotelId", hname);
		List<RoomDetails> result=query.getResultList();
		for(RoomDetails detailsb:result) {
			if(detailsb.getAvailability().equals("Yes")) {
				resultList.add(detailsb);
			}
		}
		
		manager.getTransaction().commit();

		return resultList;
	}

	public boolean confirmBooking(String hotelId, String roomId, int roomNumber, String roomType, String fromDate,
			String toDate, int numAdults, int numChild) {
		
		boolean status=false;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		
		List<BookingDetails> list=new ArrayList<>();
		manager.getTransaction().begin();
		float daysBetween = 0;
		Random random = new Random();
		String bookingId = random.nextInt(10000) + "";
		System.out.println(toDate);
		SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
		       Date dateBefore = myFormat.parse(fromDate);
		       Date dateAfter = myFormat.parse(toDate);
		       long difference = dateAfter.getTime() - dateBefore.getTime();
		      daysBetween = (difference / (1000*60*60*24));
		 } catch (Exception e) {
		       e.printStackTrace();
		 }
		Hotel hotel1 = manager.find(Hotel.class, hotelId);
		RoomDetails roomDetailsId=manager.find(RoomDetails.class, roomId);
		if((int)daysBetween<0 || (int)daysBetween>30 ) {
			return status=false;
		}else {
		details.setUserId(gUser);
		details.setRoomId(roomId);
		details.setNoOfChild(numChild);
		details.setNoOfAdults(numAdults);
		details.setBookingId(bookingId);
		details.setBookedToDate(toDate);
		details.setBookedFromDate(fromDate);
		details.setAmount((int)daysBetween*(numAdults * details.getAmount()) + (numChild * (details.getAmount()/2)));
		details.setHotelId(hotelId);
		roomDetailsId.setAvailability("No");
		list.add(details);
		hotel1.getBookingDetails().addAll(list);
		
		manager.persist(hotel1);
		manager.persist(details);
		manager.getTransaction().commit();
		manager.close();

		return status=true;
		}
	}


	public List<BookingDetails> hotelStatus() {
		String status = "";
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();

		manager.getTransaction().begin();
		System.out.println();
		String hql = "SELECT BD FROM BookingDetails BD WHERE BD.userId=:userId";
		Query query = manager.createQuery(hql);
		query.setParameter("userId", loginUserId);
		System.out.println(loginUserId);
		System.out.println(query);
		List<BookingDetails> bookingDetails = query.getResultList();
		manager.getTransaction().commit();
		manager.close();
		factory.close();
		return bookingDetails;
	}
	
	public static List<Hotel> getHotels(String city) {

		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		Query query = manager.createQuery("SELECT H FROM Hotel H WHERE H.city=:cityName").setParameter("cityName", city);
		List<Hotel> hotelsList = query.getResultList();
		System.out.println(hotelsList);
		manager.getTransaction().commit();
		manager.close();
		return hotelsList;
	}	
	public static List<BookingDetails> getBookingList(String date){
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();

		Query query = manager.createQuery("SELECT bd FROM BookingDetails bd WHERE bd.bookedFromDate=:date").setParameter("date", date);
		List<BookingDetails> bookingList= query.getResultList();
		
		manager.getTransaction().commit();
		manager.close();
		return bookingList;
	}

	public static List<BookingDetails> getBookingOnHotel(String hotelid) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		
		Query query = manager.createQuery("SELECT bd FROM BookingDetails bd WHERE bd.hotelId=:id").setParameter("id", hotelid);
		List<BookingDetails> bookingListOnHotel= query.getResultList();
			
		manager.getTransaction().commit();
		manager.close();
		return bookingListOnHotel;
	}

	public static Set<Users> guestListOfHotel(String user) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("HotelManagementSystem");
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		
		Query query = manager.createQuery("SELECT bd FROM BookingDetails bd WHERE bd.hotelId=:id").setParameter("id", user);
		
		List<BookingDetails> bookingListOnHotel= query.getResultList();
		List<String> userRetrival=new ArrayList<>();
		Set<Users> userRetrivalStore=new HashSet<>();
		
		for(BookingDetails bookingDetails:bookingListOnHotel) {
			userRetrival.add(bookingDetails.getUserId());
		}
	
		for(int userSize=0;userSize<userRetrival.size();userSize++) {
			Users users=manager.find(Users.class,userRetrival.get(userSize));
			userRetrivalStore.add(users);
		}
		manager.getTransaction().commit();
		manager.close();
		return userRetrivalStore;
	}
}
