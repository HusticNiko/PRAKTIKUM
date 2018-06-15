package login.sumit.registration;

public interface SporociloDAO {
	
	public int insertSporocilo(Sporocilo s);
	public Sporocilo getSporocilo(Object Posiljatelj,String Prejemnik, String Sporocilo);
	


}
