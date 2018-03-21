package webapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import beans.Person;

public class PageOne extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");

		Person person = new Person();

		addPersonData(person, request);

		request.setAttribute("person", person);
		request.getRequestDispatcher("/pageTwo.jsp").forward(request, response);

	}

	public void addPersonData(Person person, HttpServletRequest request) {
		person.setPeselPodatnika(request.getParameter("peselPodatnika"));
		person.setPeselMalzonka(request.getParameter("peselMalzonka"));
		person.setRok(request.getParameter("rok"));
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
