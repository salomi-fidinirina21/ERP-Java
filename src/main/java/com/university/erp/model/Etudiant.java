package com.university.erp.model;

import java.time.LocalDate;

public class Etudiant {
    private Long id;
    private String nie;
    private String nom;
    private String prenom;
    private String email;
    private String adresse;
    private String telephone;
    private LocalDate dtDeNaissance;
    private String niveau;
    private String filiere;

    public Etudiant(Long id, String nie, String nom, String prenom, String email, String adresse, String telephone, LocalDate dtDeNaissance) {
        this.id = id;
        this.nie = nie;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.adresse = adresse;
        this.telephone = telephone;
        this.dtDeNaissance = dtDeNaissance;
        this.niveau = niveau;
        this.filiere = filiere;
    }

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getNie() {
        return nie;
    }
    public void setNie(String nie) {
        this.nie = nie;
    }

    public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getEmail() {return email;}
    public void setEmail(String email) {this.email = email;}

    public String getAdresse() {return adresse;}
    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getTelephone() {
        return telephone;
    }
    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public LocalDate getDtDeNaissance() {
        return dtDeNaissance;
    }
    public void setDtDeNaissance(LocalDate dtDeNaissance) {
        this.dtDeNaissance = dtDeNaissance;
    }

    public String getNiveau() {return niveau;}
    public void setNiveau(String niveau) {this.niveau = niveau;}

    public String getFiliere() {return filiere;}
    public void setFiliere(String filiere) {this.filiere = filiere;}
}
