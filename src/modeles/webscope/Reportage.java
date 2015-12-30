package modeles.webscope;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "reportage")
@PrimaryKeyJoinColumn(name="id_video")
public class Reportage extends Video {
	
	  @Column(name="lieu")
	  private String lieu;
	  public void setLieu(String l) {lieu = l;}
	  public String getLieu() {return lieu;}
	  
	  public Reportage() {  }
}
