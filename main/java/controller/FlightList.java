package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.City;
import models.Flight;
import services.AirportService;
import services.CityService;
import services.CountryService;
import services.FlightService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/flights")
public class FlightList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FlightService flightService = new FlightService();
	private CityService cityService = new CityService();
	private AirportService airportService = new AirportService();
	private CountryService countryService = new CountryService();

	public FlightList() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sess = request.getSession();
		// TODO Auto-generated method stub
		String filter = request.getParameter("filter");
		// check id
		String id = request.getParameter("id");
		
		if (id != null) {
			// get Flight from id
			Flight flight = flightService.getById(Integer.parseInt(id));
			sess.setAttribute("flight", flight);
			City departureCity = cityService.getByAirportId(flight.departureId());
			City destinationCity = cityService.getByAirportId(flight.destinationId());
			// get city from airport id
			sess.setAttribute("departureCity", departureCity );
			sess.setAttribute("destinationCity", destinationCity);
			sess.setAttribute("departureAirport", airportService.getById(flight.departureId()));
			sess.setAttribute("destinationAirport", airportService.getById(flight.destinationId()));
			sess.setAttribute("departureCountry", countryService.getById(departureCity.countryId()));
			sess.setAttribute("destinationCOuntry", countryService.getById(destinationCity.countryId()));
		}

		sess.setAttribute("flights", flightService.getAll());
		sess.setAttribute("stopovers", flightService.getAllNumStop());
		request.getRequestDispatcher("./jsp/flight_list.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String leaving = request.getParameter("leaving");
		String to = request.getParameter("gointo");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkin");
		// check id
//		String id = request.getParameter("id");
//		request.setAttribute("flights", flightService.getAll());
//		request.setAttribute("stopovers", flightService.getAllNumStop());
//		request.getRequestDispatcher("./jsp/flight_list.jsp").forward(request, response);
		doGet(request, response);
	}

}
