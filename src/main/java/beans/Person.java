package beans;

public class Person {

	private static final long serialVersionUID = 1L;

	String peselPodatnika;
	String peselMalzonka;
	String rok;
	String sposobOpodatkowania;
	String sposobArt29Ust4;
	
	public String getPeselPodatnika() {
		return peselPodatnika;
	}
	public void setPeselPodatnika(String peselPodatnika) {
		this.peselPodatnika = peselPodatnika;
	}
	public String getPeselMalzonka() {
		return peselMalzonka;
	}
	public void setPeselMalzonka(String peselMalzonka) {
		this.peselMalzonka = peselMalzonka;
	}
	public String getRok() {
		return rok;
	}
	public void setRok(String rok) {
		this.rok = rok;
	}
	public String getSposobOpodatkowania() {
		return sposobOpodatkowania;
	}
	public void setSposobOpodatkowania(String sposobOpodatkowania) {
		this.sposobOpodatkowania = sposobOpodatkowania;
	}
	public String getSposobArt29Ust4() {
		return sposobArt29Ust4;
	}
	public void setSposobArt29Ust4(String sposobArt29Ust4) {
		this.sposobArt29Ust4 = sposobArt29Ust4;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
}
