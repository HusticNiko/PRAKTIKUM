package login.sumit.registration;

public class Customer {
	
	private String ID;

	public String getID() {
		return ID;
	}
	public void setID(String ID) {
		this.ID = ID;
	}
	private Object Uporabniskoime;
	public Object getUporabniskoime() {
		return Uporabniskoime;
	}
	public void setUporabniskoime(Object uporabnik) {
		Uporabniskoime = uporabnik;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String password;
	
	private String email;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNaslov() {
		return naslov;
	}
	public void setNaslov(String naslov) {
		this.naslov = naslov;
	}
	public String getPstevilka() {
		return pstevilka;
	}
	public void setPstevilka(String pstevilka) {
		this.pstevilka = pstevilka;
	}
	private String naslov;
	private String pstevilka;
	private String priimek;

	public String getPriimek() {
		return priimek;
	}
	public void setPriimek(String priimek) {
		this.priimek = priimek;
	}
	
	
		
	private String zbirke;
	private String prodaja;
	private String stslicice;

	public String getStslicice() {
		return stslicice;
	}
	public void setStslicice(String stslicice) {
		this.stslicice = stslicice;
	}
	public String getZbirke() {
		return zbirke;
	}
	public void setZbirke(String zbirke) {
		this.zbirke = zbirke;
	}
	public String getProdaja() {
		return prodaja;
	}
	public void setProdaja(String prodaja) {
		this.prodaja = prodaja;
	}
		
	
	
	
}
