package modeles.webscope;
import javax.persistence.*;

@Entity
public class Notation {
	
	@Id
	NotationId pk;
	public NotationId getPk() {return pk;}
	public void setPk(NotationId pk) {this.pk = pk;}
	
	@Column(name="note")
	private String note;
	public void setNote(String n) {note= n;}
	public String getNote() {return note;}
	
	public Film getFilm() {return getPk().getFilm();}
	public void setFilm(Film film) {getPk().setFilm(film);}
	
	public Internaute getInternaute() {return getPk().getInternaute();}
	public void setInternaute(Internaute internaute) {getPk().setInternaute(internaute);}
}