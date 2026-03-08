package com.university.erp.model;

import java.util.ArrayList;
import java.util.List;

public class Cours {
    private Long id;
    private String code;
    private String nom;
    private int credits;
    private int volumeHoraire;
    private List<String> niveauxAutorises = new ArrayList<>();
    private List<String> filieresAutorises = new ArrayList<>();

    public Cours(){}

    public Cours(Long id, String code, String nom, int credits, int volumeHoraire) {
        this.id = id;
        this.code = code;
        this.nom = nom;
        this.credits = credits;
        this.volumeHoraire = volumeHoraire;
    }

    public Long getId() {return id;}
    public void setId(Long id) {this.id = id;}

    public String getCode() {return code;}
    public void setCode(String code) {this.code = code;}

    public String getNom() {return nom;}
    public void setNom(String nom) {this.nom = nom;}

    public int getCredits() {return credits;}
    public void setCredits(int credits) {this.credits = credits;}

    public int getVolumeHoraire() {return volumeHoraire;}
    public void setVolumeHoraire(int volumeHoraire) {this.volumeHoraire = volumeHoraire;}

    public List<String> getNiveauxAutorises() {return niveauxAutorises;}
    public List<String> getFilieresAutorises() {return filieresAutorises;}
}
