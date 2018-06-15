package login.sumit.registration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

@WebServlet("/dodajanjeSlicic")
public class DodajanjeSlicic extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    
    public DodajanjeSlicic() {
    }
    
    
    
  
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
		session.getAttribute("prijavljenuporabnik");
		
		CustomerDAO cd2 = new CustomerDAOImpl();
		String stevilka = request.getParameter("slicica");
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
			a.setStslicice(stevilka);
			a.setZbirke(zbirka);
			a.setProdaja(vrsta_prodaje);
			a.setUporabniskoime(uporabnik);
			cd2.insertSlicice(a);
			request.getRequestDispatcher("mojeZbirke.jsp").forward(request, response);
			request.setAttribute("successmessage", "Slièica dodana !!");

    
		}
    
    }
}
    
 
    