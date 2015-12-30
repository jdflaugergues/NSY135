package modeles.webscope;

import javax.persistence.*;

@Entity
@Table(name = "pays")
public class Pays {
	
	@Id
	@GeneratedValue
	@Column(name = "code")
	private String code;

	@Column(name = "nom")
	private String nom;

	@Column(name = "langue")
	private String langue;

	public Pays(){}
	
	public Pays(String code, String nom, String langue){
		this.code = code;
		this.nom = nom;
		this.langue = langue;
	}
	
	public void setCode(String c) {code = c;}
	public String getCode() {return code;}
	
	public void setNom(String n) {nom = n;}
	public String getNom() {return nom;}
	
	public void setLangue(String l) {langue = l;}
	public String getLangue() {return langue;}
	
	@Override
	public String toString(){
		return this.code + " : " + this.nom + " " + this.langue;
	}
}