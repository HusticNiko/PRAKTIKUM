package login.sumit.registration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Posiljanje")
public class Posiljanje extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
    
    public Posiljanje() {
    }

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerDAO cd = new CustomerDAOImpl();
		Customer c = new Customer();
		HttpSession session = request.getSession();
		session.getAttribute("prijavljenuporabnik");
		Sporocilo s = new Sporocilo();
		SporociloDAO sp = new SporociloDAOImpl();
		Object posiljatelj = session.getAttribute("prijavljenuporabnik").toString();
		String prejemnik = request.getParameter("Email");
		String sporocilo = request.getParameter("text");
		String Confirm = request.getParameter("potrdi2");
		c=cd.getCustomer2(prejemnik);
		if(Confirm.equals("Poslji") ){
			s.setPosiljatelj(posiljatelj);
			s.setPrejemnik(prejemnik);
			s.setSporocilo(sporocilo);
			sp.insertSporocilo(s);
			
			request.setAttribute("successmessage", "Sporoèilo poslano !!");
			request.getRequestDispatcher("Sporocila.jsp").forward(request, response);
			
		}else {
			request.setAttribute("message", "Napaka : Uporabnik ne obstaja !!");
			request.getRequestDispatcher("Sporocila.jsp").forward(request, response);
		}
		
		
	}
	
	
}