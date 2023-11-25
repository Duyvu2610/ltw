package models;


import java.sql.Time;
import java.time.LocalDateTime;

public record FlightBooking(
		int id,
		int flightId,
		Time bookingTime,
		String seatNumber,
		int paymentId,
		String emailUser
		
		
		) {

}
