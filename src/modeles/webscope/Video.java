package modeles.webscope;

import javax.persistence.*;

@Entity
@Table(name = "video")
@Inheritance(strategy=InheritanceType.JOINED)
public class Video {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "id_video")
  private Integer idVideo;
  public Integer getIdVideo() {return this.idVideo;}
  public void setIdVideo(Integer idVideo) {this.idVideo = idVideo;}

  @Column(name = "titre")
  private String titre;
  public void setTitre(String t) {titre = t;}
  public String getTitre() {return titre;}

  @Column(name = "annee")
  private Integer annee;
  public void setAnnee(Integer a) {annee = a;}
  public Integer getAnnee() {return annee;}

  public Video() {  }
}