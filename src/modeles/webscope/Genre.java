package modeles.webscope;

import javax.persistence.*;

@Entity
@Table(name = "genre")
public class Genre {
	
	@Id
	private String code;
	public String getCode() {return code;}
	public void setCode(String c) {code = c;}
	
	public Genre(){}
}