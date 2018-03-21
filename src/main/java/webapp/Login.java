package webapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UserProfile;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");		
		response.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String surename = request.getParameter("surename");
		String login = request.getParameter("loginname");
		String pass = request.getParameter("password");

		UserProfile userProfile = new UserProfile();
		userProfile.setLogin(login);
		userProfile.setName(name);
		userProfile.setSurename(surename);
		userProfile.setPass(pass);

		if (userProfile.getLogin().equals("paulina") && userProfile.getPass().equals("123")) {
			request.getSession().setAttribute("userProfile", userProfile);
			request.getRequestDispatcher("pageOne.jsp").forward(request, response);

		} else {
			request.getRequestDispatcher("login.jsp").forward(request, response);

		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}
}
