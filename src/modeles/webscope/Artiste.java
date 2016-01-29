package modeles.webscope;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "artiste")
public class Artiste {
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	public int getId(){return id;}
	public void setId(int id){this.id = id;}
	
	@Column(name = "nom")
	private String nom;
	public void setNom(String nom){this.nom = nom;}
	public String getNom(){return nom;}
	
	@Column(name = "prenom")
	private String prenom;
	public void setPrenom(String prenom){this.prenom = prenom;}
	public String getPrenom(){return prenom;}
	
	@Column(name="annee_naissance")
	private Integer anneeNaissance;
	public void setAnneeNaissance(Integer a){anneeNaissance = a;}
	public Integer getAnneeNaissance(){return anneeNaissance;}
	
	@OneToMany(mappedBy="realisateur" , fetch=FetchType.LAZY)
	private Set<Film> filmsRealises = new HashSet<Film>();
	public void addFilmsRealise(Film f) {
		f.setRealisateur(this);
		filmsRealises.add(f);
		}
	public Set<Film> getFilmsRealises() {return filmsRealises;}
	
	@ManyToMany(mappedBy= "acteurs" , fetch=FetchType.LAZY)
	Set<Film> filmo;
	public Set<Film> getFilmo(){return filmo;}
	
	@OneToMany(mappedBy = "pk.acteur" , fetch=FetchType.LAZY)
	private Set<Role> roles = new HashSet<Role>();
	public Set<Role> getRoles() {return this.roles;}
	public void setRoles(Set<Role> r) {this.roles = r;}
	
	public Artiste(){}
}
