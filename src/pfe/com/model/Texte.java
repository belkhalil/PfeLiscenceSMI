package pfe.com.model;


public class Texte {

	private String contenu;
	private int taille;
	public Texte(String contenu, int taille) {
		super();
		this.contenu = contenu;
		this.taille = taille;
	}
	public Texte() {
		super();
		this.contenu = null;
		this.taille = 0;
	}
	public Texte(Texte t) {
		super();
		this.contenu = t.contenu;
		this.taille = t.taille;
	}
	public String getContenu() {
		return contenu;
	}
	public void setContenu(String contenu) {
		this.contenu = contenu;
	}
	public int getTaille() {
		return contenu.length();
	}
	public void setTaille(int taille) {
		this.taille = taille;
	}
	
}

