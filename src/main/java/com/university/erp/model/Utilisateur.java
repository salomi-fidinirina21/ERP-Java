package com.university.erp.model;

public class Utilisateur {

    private Long id;
    private String email;
    private String mdp;
    private String role;

    public Utilisateur(){}

    public Utilisateur(Long id,String email,String mdp,String role){
        this.id=id;
        this.email=email;
        this.mdp=mdp;
        this.role=role;
    }

    public Long getId(){return id;}
    public void setId(Long id){this.id=id;}

    public String getEmail(){return email;}
    public void setEmail(String email){this.email=email;}

    public String getMdp(){return mdp;}
    public void setMdp(String mdp){this.mdp=mdp;}

    public String getRole(){return role;}
    public void setRole(String role){this.role=role;}
}