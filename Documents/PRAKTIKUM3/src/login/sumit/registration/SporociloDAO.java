package login.sumit.registration;

public interface SporociloDAO {
	
	public int insertSporocilo(Sporocilo s);
	public Sporocilo getSporocilo(String Prejemnik, String Posiljatelj, String Sporocilo);
	


}
