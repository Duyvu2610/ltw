package services;

import java.util.List;

import dao.FlightDAO;
import models.Flight;
import models.Stopover;

public class FlightService {
	FlightDAO dao = new FlightDAO();
	
	public List<Flight> getAll(){
		return dao.findAll();
	}
	
	
	public List<Stopover> getAllNumStop() {
		return dao.getListStopOver();
	}
	public Flight getById(int id) {
		return dao.findById(id);
	}

}
