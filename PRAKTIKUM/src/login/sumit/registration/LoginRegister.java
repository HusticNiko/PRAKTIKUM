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
		
		if(PrijavaType.equals("Prijava") && c!=null && c.getUporabniskoime()!=null) {
			request.getRequestDispatcher("Index.jsp").forward(request, response);
			HttpSession session = request.getSession();
			session.setAttribute("prijavljenuporabnik", ID);
			session.setAttribute("gesloprijave", password);
		}
			else if (PrijavaType.equals("Registracija")) {
			c.setID(ID);
			c.setUporabniskoime(request.getParameter("name"));
			c.setPassword(password);
			c.setPriimek(priimek);
			c.setEmail(mail);
			c.setNaslov(naslovu + " " + naslovm);
			c.setPstevilka(stevilka);
			cd.insertCustomer(c);
			
			request.setAttribute("successmessage", "Registracija uspešna !!");
			request.getRequestDispatcher("Registracija.jsp").forward(request, response);
				
		}else {
			request.setAttribute("message", "Napaka, preverite uporabniško ime ali geslo !!");
			request.getRequestDispatcher("Registracija.jsp").forward(request, response);
		}

	
    
	}
		
		
	
}
	
	


