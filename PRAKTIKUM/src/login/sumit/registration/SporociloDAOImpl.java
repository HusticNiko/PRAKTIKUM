package login.sumit.registration;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SporociloDAOImpl implements SporociloDAO {

	static Connection con;
	static PreparedStatement ps;
	
	@Override
	public int insertSporocilo (Sporocilo s) {
		int status=0;
		try {
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("INSERT INTO sporocilo VALUES(?,?,?)");
			ps.setObject(1,s.getPosiljatelj());
			ps.setString(2,s.getPrejemnik());
			ps.setString(3, s.getSporocilo());
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}

	@Override
	public Sporocilo getSporocilo(Object Posiljatelj, String Prejemnik, String Sporocilo) {
		Sporocilo s= new Sporocilo();
		
		
		try {
			con = MyConnectionProvider.getCon();
			ps=con.prepareStatement("Select * FROM sporocilo WHERE Prejemnik=?");
			ps.setObject(1,Posiljatelj);
			ps.setString(2,Prejemnik);
			ps.setString(3,Sporocilo);
			
	
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				s.setPosiljatelj((rs.getString(1)));
				s.setPrejemnik((rs.getString(2)));
				s.setSporocilo((rs.getString(3)));
				
			}
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return s;
	}

}
