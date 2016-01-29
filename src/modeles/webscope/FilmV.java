package modeles.webscope;

import javax.persistence.*;

@Entity
@Table(name = "filmv")
@PrimaryKeyJoinColumn(name="id_video")
public class FilmV extends Video {
	
      @ManyToOne (fetch=FetchType.LAZY)
      @JoinColumn(name = "id_realisateur")
      private Artiste realisateur;
      public void setRealisateur(Artiste a) {realisateur = a;}
      public Artiste getRealisateur() {return realisateur;}
      
      @ManyToOne (fetch=FetchType.LAZY)
  	  @JoinColumn (name="genre")
      private Genre genre;
      public void setGenre(Genre g) {genre = g;}
      public Genre getGenre() {return genre;}
 
      @ManyToOne (fetch=FetchType.LAZY)
  	  @JoinColumn (name="pays")
  	  private Pays pays;
  	  public void setPays(Pays p) {pays = p;}
  	  public Pays getPays() {return pays;}
  	  
}