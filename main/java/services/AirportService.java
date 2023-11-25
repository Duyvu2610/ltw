package services;

import dao.AirportDAO;
import models.Airport;

public class AirportService {
	private AirportDAO airportDAO = new AirportDAO();

	public Airport getById(String id) {
		return airportDAO.findById(id);
	}
}
