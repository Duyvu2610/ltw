package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.RequestContext;

import models.User;
import services.UserService;
import services.UserService;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private UserService userService = new UserService();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("./jsp/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("uname");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String confirmPassword = request.getParameter("confirm-password");
		User user = new User(userName, email, pw, 2);
		RequestDispatcher di = null;
		di = request.getRequestDispatcher("./jsp/register.jsp");
		if (userService.create(user) && pw.equals(confirmPassword)) {
			System.out.println("dung");
			request.setAttribute("status", "success");
			
		}else {
			request.setAttribute("status", "failed");
	        
		}
		di.forward(request, response);
		
	}

}
