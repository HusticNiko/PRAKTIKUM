package login.sumit.registration;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerDAOImpl implements CustomerDAO {

	static Connection con;
	static PreparedStatement ps;
	
	@Override
	public int insertCustomer(Customer c) {
		int status=0;
		try {
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("INSERT INTO customer VALUES(?,?,?,?,?,?,?)");
			ps.setString(1,c.getID());
			ps.setObject(2,c.getUporabniskoime());
			ps.setString(4,c.getPassword());
			ps.setString(5,c.getEmail() );
			ps.setString(6,c.getNaslov() );
			ps.setString(7,c.getPstevilka() );
			ps.setString(3, c.getPriimek());
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}

	@Override
	public Customer getCustomer(String userId, String password) {
		Customer c=new Customer();
		
		
		try {
			con = MyConnectionProvider.getCon();
			ps=con.prepareStatement("Select * from customer where userId=? and password =?");
			ps.setString(1,userId);
			ps.setString(2,password);
			
	
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				c.setID((rs.getString(1)));
				c.setPassword(rs.getString(4));
				c.setUporabniskoime(rs.getString(2));
				c.setEmail(rs.getString(5));
				c.setNaslov(rs.getString(6));
				c.setPstevilka(rs.getString(7));
				c.setPriimek(rs.getString(3));
			}
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return c;
	}

	
	
	
	@Override
	public int insertSlicice(Customer a) {
		int status=0;
		try {
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("INSERT INTO slicice VALUES(?,?,?,?)");
			ps.setString(1,a.getStslicice());
			ps.setString(2,a.getZbirke());
			ps.setString(3,a.getProdaja());
			ps.setObject(4,a.getUporabniskoime());
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}

	
	@Override
	public Customer getCustomer2(String userId) {
		Customer c=new Customer();
		
		
		try {
			con = MyConnectionProvider.getCon();
			ps=con.prepareStatement("Select * from customer where userId=?");
			ps.setString(1,userId);
			
			
	
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				c.setID((rs.getString(1)));
				c.setPassword(rs.getString(4));
				c.setUporabniskoime(rs.getString(2));
				c.setEmail(rs.getString(5));
				c.setNaslov(rs.getString(6));
				c.setPstevilka(rs.getString(7));
				c.setPriimek(rs.getString(3));
			}
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return c;
	}

	

}
