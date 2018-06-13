package login.sumit.registration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
    
    public LoginRegister() {
    }

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		CustomerDAO cd = new CustomerDAOImpl();
		String priimek = request.getParameter("surname");
		String mail = request.getParameter("Email");
		String naslovu = request.getParameter("ulica");
		String naslovm = request.getParameter("mesto");
		String stevilka = request.getParameter("City");
		String ID = request.getParameter("username");
		String password = request.getParameter("password");
		String PrijavaType=request.getParameter("potrdi");
		Customer c= new Customer();
		c=cd.getCustomer(ID,password);
		String Posiljatelj = request.getParameter("Posiljatelj");
		String Prejemnik = request.getParameter("Prejemnik");
		String Sporocilo = request.getParameter("Sporocilo");
		Sporocilo s = new Sporocilo(Posiljatelj, Prejemnik, Sporocilo);
	
				
				
		if(PrijavaType.equals("Prijava") && c!=null && c.getUporabniskoime()!=null) {
			request.getRequestDispatcher("Index.jsp").forward(request, response);
			HttpSession session = request.getSession();
			session.setAttribute("prijavljenuporabnik", ID);
		}
			else if (PrijavaType.equals("Registracija") ) {
			c.setID(ID);
			c.setUporabniskoime(request.getParameter("name"));
			c.setPassword(password);
			c.setPriimek(priimek);
			c.setEmail(mail);
			c.setNaslov(naslovu + " " + naslovm);
			c.setPstevilka(stevilka);
			cd.insertCustomer(c);
			
			request.setAttribute("successmessage", "Registracija uspe�na !!");
			request.getRequestDispatcher("Registracija.jsp").forward(request, response);
				
		}
			else if ( PrijavaType.equals("Sporocilo") ) {
				s.setPosiljatelj(Posiljatelj);
				s.setPrejemnik(request.getParameter(Prejemnik));
				s.setSporocilo(request.getParameter(Sporocilo));
			}
					
					
			else {
			request.setAttribute("message", "Data not found !!");
			request.getRequestDispatcher("Registracija.jsp").forward(request, response);
		}
			
		HttpSession session = request.getSession();
		session.getAttribute("prijavljenuporabnik");
		
		CustomerDAO cd2 = new CustomerDAOImpl();
    	String zbirka = request.getParameter("selection");
    	System.out.println(zbirka);
		String vrsta_prodaje = request.getParameter("selection-prodaja");
		System.out.println(vrsta_prodaje);
		Object uporabnik = session.getAttribute("prijavljenuporabnik").toString();
		System.out.println(uporabnik);
		String ConfirmType=request.getParameter("potrdi");
		System.out.println(ConfirmType);
		Customer a= new Customer();
		if (ConfirmType.equals("dodaj") ) {
			a.setZbirke(zbirka);
			a.setProdaja(vrsta_prodaje);
			a.setUporabniskoime(uporabnik);
			cd2.insertSlicice(a);
			request.setAttribute("successmessage", "Sli�ica dodana !!");
		} 
		
    }
}
	
	


