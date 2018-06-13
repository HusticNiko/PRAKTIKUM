package login.sumit.registration;

public class Sporocilo {
	
	//Posiljatelj varchar (30),
	//Prejemnik varchar(30),
	//sporocilo mediumtext
	
	//customer (userId varchar(20), name varchar(20), username varchar(20), password varchar(20), email varchar(30), naslov varchar(40), pstevilka int(5));
	
	private String Posiljatelj;

	public String getPosiljatelj() {
		return Posiljatelj;
	}
	public void setPosiljatelj(String Posiljatelj) {
		this.Posiljatelj = Posiljatelj;
	}
	
	
	private Object Prejemnik;
	public Object getPrejemnik() {
		return Prejemnik;
	}
	public void setPrejemnik(Object Prejemnik) {
		Prejemnik = Prejemnik;
	}
	public String sporocilo() {
		return Sporocilo;
	}
	public void sporocilo(String Sporocilo) {
		this.Sporocilo = Sporocilo;
	}
	
	private String Sporocilo;

	public String getSporocilo() {
		return Sporocilo;
	}
	public void setSporocilo(String Sporocilo) {
		this.Sporocilo = Sporocilo;
	}

	public Sporocilo (String Posiljatelj, String Prejemnik, String Sporocilo) {
		this.Posiljatelj = Posiljatelj;
		this.Prejemnik = Prejemnik;
		this.Sporocilo = Sporocilo;
		
	}
	
	
	
}
