package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import database.DBConnection;
import dto.StopoverDTO;
import models.Airline;
import models.Flight;
import models.Stopover;

public class FlightDAO extends DBConnection {

	public List<Flight> findAll() {
		List<Flight> flightList = new ArrayList<>();
		String query = "select * from Flight\r\n"
				+ "left join Airline on Flight.airline_id = Airline.airline_id";

		try {
			Connection cn = super.getConnection();
			PreparedStatement ps = cn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Flight flight = createFlight(rs);
				flightList.add(flight);
			}

			// Đóng kết nối
			rs.close();
			ps.close();
			cn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		return flightList;
	}

	private Flight createFlight(ResultSet rs) throws SQLException {
		Date departureDate = new Date(rs.getTimestamp(4).getTime());
		Date arrivalDate = new Date(rs.getTimestamp(5).getTime());
		// Convert to LocalDateTime
		LocalDateTime departureDateTime = LocalDateTime.ofInstant(departureDate.toInstant(),
				java.time.ZoneId.systemDefault());
		LocalDateTime arrivalDateTime = LocalDateTime.ofInstant(arrivalDate.toInstant(),
				java.time.ZoneId.systemDefault());

		// Calculate the duration
		Duration duration = Duration.between(departureDateTime, arrivalDateTime);

		// Lấy số giờ và số phút từ khoảng thời gian
		long hours = duration.toHours();
		long minutes = duration.toMinutesPart();
		Airline airline = new Airline(rs.getInt(7), rs.getString(10), rs.getString(11));
		Flight flight = new Flight(rs.getInt(1), rs.getString(2), rs.getString(3), departureDate, arrivalDate,
				rs.getDouble(6), airline, rs.getInt(8), hours, minutes, getListStopOverById(rs.getInt(1)));
		return flight;
	}


	public Flight find(String departure, String destination, Date checkin, Date checkout) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Stopover> getListStopOver() {
		List<Stopover> list = new ArrayList<Stopover>();
		String query = "select * from Stopover";

		try {
			Connection cn = super.getConnection();
			PreparedStatement ps = cn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Stopover st = new Stopover(rs.getInt(1), rs.getTime(2), rs.getTime(3), rs.getInt(4), rs.getInt(5),
						rs.getString(6));
				list.add(st);
			}

			// Đóng kết nối
			rs.close();
			ps.close();
			cn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<Stopover> getListStopOverById(int id) {
		List<Stopover> list = new ArrayList<Stopover>();
		String query = "select * from Stopover where flight_id = ?";

		try {
			Connection cn = super.getConnection();
			PreparedStatement ps = cn.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Stopover st = new Stopover(rs.getInt(1), rs.getTime(2), rs.getTime(3), rs.getInt(4), rs.getInt(5),
						rs.getString(6));
				list.add(st);
			}

			// Đóng kết nối
			rs.close();
			ps.close();
			cn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		return list;
	}

	public Flight findById(int id) {

		String query = "select * from Flight\r\n"
				+ "left join Airline on Flight.airline_id = Airline.airline_id WHERE flight_id = ?";
		Flight flight = null;
		try {
			Connection cn = super.getConnection();
			PreparedStatement ps = cn.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				flight = createFlight(rs);
			}

			// Đóng kết nối
			rs.close();
			ps.close();
			cn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		return flight;
	}
//	public List<StopoverDTO> getListStopOver(int flightId){
//		String query = "select * from Flight\r\n"
//				+ "left join Airline on Flight.airline_id = Airline.airline_id WHERE flight_id = ?";
//		Flight flight = null;
//		try {
//			Connection cn = super.getConnection();
//			PreparedStatement ps = cn.prepareStatement(query);
//			ps.setInt(1, id);
//			ResultSet rs = ps.executeQuery();
//
//			while (rs.next()) {
//				flight = createFlight(rs);
//			}
//
//			// Đóng kết nối
//			rs.close();
//			ps.close();
//			cn.close();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//
//		return flight;
//	}

}
