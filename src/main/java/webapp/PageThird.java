package webapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Person;
import beans.PitDetails;
import beans.TaxpayerInformation;

public class PageThird extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");

		TaxpayerInformation taxpayer = new TaxpayerInformation();
		PitDetails pitDetails = new PitDetails();
		Person person = new Person();

		addPersonData(person, request);
		addPitData(pitDetails, request);
		addPTaxerData(taxpayer, request);

		request.setAttribute("taxpayer", taxpayer);
		request.setAttribute("person", person);
		request.setAttribute("pitDetails", pitDetails);

		request.getRequestDispatcher("pageFourth.jsp").forward(request, response);
	}

	public void addPTaxerData(TaxpayerInformation taxpayer, HttpServletRequest request) {
		taxpayer.setNazwisko(request.getParameter("nazwisko"));
		taxpayer.setPierwszeImie(request.getParameter("pierwszeImie"));
		taxpayer.setDataUrodzenia(request.getParameter("dataUrodzenia"));
		taxpayer.setKraj(request.getParameter("kraj"));
		taxpayer.setWojewodztwo(request.getParameter("wojewodztwo"));
		taxpayer.setPowiat(request.getParameter("powiat"));
		taxpayer.setGmina(request.getParameter("gmina"));
		taxpayer.setUlica(request.getParameter("ulica"));
		taxpayer.setNrDomu(request.getParameter("nrDomu"));
		taxpayer.setNrLokalu(request.getParameter("nrLokalu"));
		taxpayer.setKodPocztowy(request.getParameter("kodPocztowy"));
		taxpayer.setMiejscowosc(request.getParameter("miejscowosc"));
		taxpayer.setPoczta(request.getParameter("poczta"));
	}

	public void addPersonData(Person person, HttpServletRequest request) {
		person.setPeselPodatnika(request.getParameter("peselPodatnika"));
		person.setPeselMalzonka(request.getParameter("peselMalzonka"));
		person.setRok(request.getParameter("rok"));
	}

	public void addPitData(PitDetails pitDetails, HttpServletRequest request) {
		pitDetails.setNazwaUrzedu(request.getParameter("nazwaUrzedu"));
		pitDetails.setCelZlozeniaFormularza(request.getParameter("celZlozeniaFormularza"));
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