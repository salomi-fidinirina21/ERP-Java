package com.university.erp.service;

import com.university.erp.model.Cours;
import com.university.erp.model.Etudiant;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class ServiceCours {
    private final List<Cours> coursList = new ArrayList<>();
    private Long nextId = 1L;

    //Créer
    public Cours createCours(Cours cours) {
        cours.setId(nextId++);
        coursList.add(cours);
        return cours;
    }

    //tous les cours
    public List<Cours> findAll() {
        return coursList;
    }

    //info sur le cours c
    public Optional<Cours> findById(Long id) {
        return coursList.stream().filter(c -> c.getId().equals(id)).findFirst();
    }

    //modifier
    public boolean modifier(Long id, Cours modifiedCours) {
        Optional<Cours> existant = findById(id);
        if (existant.isPresent()) {
            Cours c = existant.get();
            c.setNom(modifiedCours.getNom());
            c.setCode(modifiedCours.getCode());
            c.setCredits(modifiedCours.getCredits());
            c.setVolumeHoraire(modifiedCours.getVolumeHoraire());
            return true;
        }
        return false;
    }

    //supprimer
    public boolean delete(Long id) {
        return coursList.removeIf(c -> c.getId().equals(id));
    }
}
