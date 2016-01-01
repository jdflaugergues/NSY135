package modeles.webscope;

import javax.persistence.*;

@Embeddable
public class NotationId implements java.io.Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@ManyToOne (fetch=FetchType.LAZY)
	@JoinColumn(name = "email")
	private Internaute internaute;
	public Internaute getInternaute() {return internaute;}
	public void setInternaute(Internaute i) {this.internaute = i;}

	@ManyToOne (fetch=FetchType.LAZY)
	@JoinColumn(name = "id_film")
	private Film film;
	public Film getFilm() {return film;}
	public void setFilm(Film f) {this.film = f;}
}