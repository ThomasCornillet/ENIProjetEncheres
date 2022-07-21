package fr.eni.encheres.bo;

import java.time.LocalDate;

public class Articles {
	private int noArticle;
	private String nomArticle;
	private String description;
	private LocalDate date_debut_enchere;
	private LocalDate date_fin_enchere;
	private int prix_initial;
	private int prix_vente;
	private int no_utilisateur;
	private int no_categorie;
	private boolean vendu;
	
	public int getNoArticle() {
		return noArticle;
	}
	public void setNoArticle(int noArticle) {
		this.noArticle = noArticle;
	}
	public String getNomArticle() {
		return nomArticle;
	}
	public void setNomArticle(String nomArticle) {
		this.nomArticle = nomArticle;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public LocalDate getDate_debut_enchere() {
		return date_debut_enchere;
	}
	public void setDate_debut_enchere(LocalDate date_debut_enchere) {
		this.date_debut_enchere = date_debut_enchere;
	}
	public LocalDate getDate_fin_enchere() {
		return date_fin_enchere;
	}
	public void setDate_fin_enchere(LocalDate date_fin_enchere) {
		this.date_fin_enchere = date_fin_enchere;
	}
	public int getPrix_initial() {
		return prix_initial;
	}
	public void setPrix_initial(int prix_initial) {
		this.prix_initial = prix_initial;
	}
	public int getPrix_vente() {
		return prix_vente;
	}
	public void setPrix_vente(int prix_vente) {
		this.prix_vente = prix_vente;
	}
	public int getNo_utilisateur() {
		return no_utilisateur;
	}
	public void setNo_utilisateur(int no_utilisateur) {
		this.no_utilisateur = no_utilisateur;
	}
	public int getNo_categorie() {
		return no_categorie;
	}
	public void setNo_categorie(int no_categorie) {
		this.no_categorie = no_categorie;
	}
	public boolean isVendu() {
		return vendu;
	}
	public void setVendu(boolean vendu) {
		this.vendu = vendu;
	}
	
	public Articles() {
	}
	
	

}
