package com.university.erp;

import com.university.erp.model.Etudiant;
import com.university.erp.service.ServiceEtudiant;

import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
        ServiceEtudiant service = new ServiceEtudiant();

        //créer
        Etudiant e1 = new Etudiant(null, "SE20250326", "Rakoto", "Jean", "rakoto@gmail.com","Antananarivo" , "033200000", LocalDate.of(2002,05, 25));
        service.createEtudiant(e1);
        System.out.println("Etudiant " + e1.getId());
        service.findAll().forEach(e ->
                System.out.println(e.getNom() + " " + e.getPrenom() + " " + e.getTelephone())
        );
    }
}