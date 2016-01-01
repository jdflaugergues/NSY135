package modeles.webscope;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name = "film")
public class Film {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id", unique=true, nullable=false)
	private Integer id;
	public Integer getId() {return id;}
	public void setId(Integer i) {id = i;}
	
	@Column
	private String titre;
	public void setTitre(String t) {titre= t;}
	public String getTitre() {return titre;}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn (name="genre")
    private Genre genre;
    public void setGenre(Genre g) {genre = g;}
    public Genre getGenre() {return genre;}
	
	@Column
	private Integer annee;
	public void setAnnee(Integer a) {annee = a;}
	public Integer getAnnee() {return annee;}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn (name="id_realisateur")
	private Artiste realisateur;
	public void setRealisateur(Artiste a) {realisateur = a;}
	public Artiste getRealisateur() {return realisateur;}
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn (name="code_pays")
	private Pays pays;
	public void setPays(Pays p) {pays = p;}
	public Pays getPays() {return pays;}

	@ManyToMany()
	@JoinTable(name = "Role", joinColumns = @JoinColumn(name = "id_film"),
				inverseJoinColumns = @JoinColumn(name = "id_acteur"))
	Set<Artiste> acteurs = new HashSet<Artiste>();
	public Set<Artiste> getActeurs() {return acteurs;}
	
	@OneToMany(mappedBy = "pk.film")
	private Set<Role> roles = new HashSet<Role>();
	public Set<Role> getRoles() {return this.roles;}
	public void setRoles(Set<Role> r) {this.roles = r;}
	
	@OneToMany(mappedBy = "pk.film")
	private Set<Notation> notations = new HashSet<Notation>();
	public Set<Notation> getNotations() {return this.notations;}
	public void setNotations(Set<Notation> n) {this.notations = n;}
	
	public Film(){}
}