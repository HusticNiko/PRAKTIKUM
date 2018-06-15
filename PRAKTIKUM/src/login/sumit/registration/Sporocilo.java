package login.sumit.registration;

public class Sporocilo {
	
	//Posiljatelj varchar (30),
	//Prejemnik varchar(30),
	//sporocilo mediumtext
	
	//customer (userId varchar(20), name varchar(20), username varchar(20), password varchar(20), email varchar(30), naslov varchar(40), pstevilka int(5));
	
	private Object Posiljatelj;

	public Object getPosiljatelj() {
		return Posiljatelj;
	}
	public void setPosiljatelj(Object Posiljatelj) {
		this.Posiljatelj = Posiljatelj;
	}
	
	
	private String Prejemnik;
	public String getPrejemnik() {
		return Prejemnik;
	}
	public void setPrejemnik(String Prejemnik) {
		this.Prejemnik = Prejemnik;
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

	
	
	
	
}
