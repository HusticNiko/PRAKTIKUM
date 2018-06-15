package login.sumit.registration;

import java.io.IOException;
import java.net.ConnectException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/iskanje")

public class iskanjeDAOImpl extends iskanje implements iskanjeDAO  {

	static Connection con;
	static PreparedStatement ps;
	
	@Override
	public int insertiskanje (iskanje is) {
		int status=0;
		try {
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("INSERT INTO slicice VALUES(?,?)");
			ps.setString(1,is.getstslicice());
			ps.setString(2,is.getzbirke());
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}

	
	
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	HttpSession session = request.getSession();
			
			iskanjeDAO is2 = new iskanjeDAOImpl();
			String stslicice = request.getParameter("searchbar");
	    	String zbirke = request.getParameter("selekcija");
	    	String SearchType=request.getParameter("searchbutton");
	    	System.out.println(zbirke);
			iskanje is= new iskanje();
			
		
			if (SearchType.equals("-2")) {
			try {
				con = MyConnectionProvider.getCon();
				ps=con.prepareStatement("Select * FROM slicice WHERE stslicice=? AND zbirke=?");
				ps.setString(1,stslicice);
				ps.setString(2,zbirke);
				
				
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					is.setstslicice((rs.getString(1)));
					is.setzbirke((rs.getString(2)));
					
				}
				con.close();
				
			}catch(Exception e) {
				System.out.println(e);
			}
			
		}
		}



	



	public iskanje getiskanje(String stslicice, String zbirke) {
		iskanje is= new iskanje();
		
		
		try {
			con = MyConnectionProvider.getCon();
			ps=con.prepareStatement("Select * FROM sporocilo WHERE Prejemnik=?");
			ps.setString(1,stslicice);
			ps.setString(2,zbirke);
			
	
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				is.setstslicice((rs.getString(1)));
				is.setzbirke((rs.getString(2)));
				
			}
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return is;
	}






}
//request.getRequestDispatcher("iskanje.jsp").forward(request, response);
	
	/*
	public iskanje getiskanje2(String selekcija, String searchbar) {
			
			iskanje is= new iskanje();
			
			
			try {
				con = MyConnectionProvider.getCon();
				ps=con.prepareStatement("Select * FROM slicice WHERE selekcija=? AND searchbar=?");
				ps.setString(1,selekcija);
				ps.setString(2,searchbar);
				
				
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					is.setstslicice((rs.getString(1)));
					is.setzbirke((rs.getString(2)));
					
				}
				con.close();
				
			}catch(Exception e) {
				System.out.println(e);
			}
			
			return is;
		}
		*/
