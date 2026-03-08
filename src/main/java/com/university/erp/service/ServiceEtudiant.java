package com.university.erp.service;

import com.university.erp.model.Etudiant;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class ServiceEtudiant {
    private final List<Etudiant> etudiants = new ArrayList<>();
    private Long nextId = 1L;

    //Création
    public Etudiant createEtudiant(Etudiant etudiant) {
        etudiant.setId(nextId++);
        etudiants.add(etudiant);
        return etudiant;
    }

    //Liste
    public List<Etudiant> findAll() {
        return etudiants;
    }

    //Info sur l'etudiant x
    public Optional<Etudiant> findById(Long id) {
        return etudiants.stream().filter(x -> x.getId().equals(id)).findFirst();
    }

    //Modifier l'info
    public boolean update(Long id, Etudiant modifiedEtudiant) {
        Optional<Etudiant> existant = findById(id);
        if (existant.isPresent()){
            Etudiant x = existant.get();
            x.setNom(modifiedEtudiant.getNom());
            x.setPrenom(modifiedEtudiant.getPrenom());
            x.setAdresse(modifiedEtudiant.getAdresse());
            x.setTelephone(modifiedEtudiant.getTelephone());
            x.setEmail(modifiedEtudiant.getEmail());
            x.setNiveau(modifiedEtudiant.getNiveau());
            return true;
        }
        return false;
    }

    //Supprimer
    public boolean delete(Long id) {
        return etudiants.removeIf(x -> x.getId().equals(id));
    }
}
