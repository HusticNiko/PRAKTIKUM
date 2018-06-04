package si.feri.ost.ost.demo.entities;

public class Oseba {
	
	private String ime;
	private String priimek;
	
	public String getIme() {
		return ime;
	}
	public void setIme(String ime) {
		this.ime = ime;
	}
	public String getPriimek() {
		return priimek;
	}
	public void setPriimek(String priimek) {
		this.priimek = priimek;
	}
	
	public Oseba(String ime, String priimek) {
		this.ime = ime;
		this.priimek = priimek;
	}

}
