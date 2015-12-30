package modeles;

/**
 * Encapsulation de la représentation d'un film
 *
 */
public class Film {
	private String titre;
	private Integer annee;

	public Film() {
	}

	public void setTitre(String leTitre) {
		titre = leTitre;
	}

	public void setAnnee(Integer lAnnee) {
		annee = lAnnee;
	}

	public String getTitre() {
		return titre;
	}

	public Integer getAnnee() {
		return annee;
	}
}