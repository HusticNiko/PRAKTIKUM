package login.sumit.registration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/iskanje")
public class iskanje {
	
	
	/*
	private Object stslicice;

	public Object getstslicice() {
		return stslicice;
	}
	public void setstslicice(Object stslicice) {
		this.stslicice = stslicice;
	}
	*/
	private String stslicice;

	public String getstslicice() {
		return stslicice;
	}
	public void setstslicice(String stslicice) {
		this.stslicice = stslicice;
	}
	
	private String zbirke;
	public String getzbirke() {
		return zbirke;
	}
	public void setzbirke(String zbirke) {
		this.zbirke = zbirke;
	}
	
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
		
		iskanjeDAO is2 = new iskanjeDAOImpl();
		String stslicice = request.getParameter("searchbar");
    	String zbirka = request.getParameter("selekcija");
    	String SearchType=request.getParameter("searchbutton");
    	System.out.println(zbirka);
		iskanje is= new iskanje();
		if (SearchType.equals("value")) {
			is.setstslicice(stslicice);
			System.out.println(stslicice);
			is.setzbirke(zbirka);
			System.out.println(zbirka);
			is2.insertiskanje(is);
			request.getRequestDispatcher("Iskanje.jsp").forward(request, response);

    
		}
    
    }
}

