package com.university.erp.dao;

import com.university.erp.model.Etudiant;
import com.university.erp.util.DBConnection;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class EtudiantDAO {

    public List<Etudiant> getAllEtudiants() {

        List<Etudiant> list = new ArrayList<>();

        try {

            Connection conn = DBConnection.getConnection();

            String sql = "SELECT * FROM etudiant";

            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Long id = rs.getLong("id");
                String nie = rs.getString("nie");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String email = rs.getString("email");
                String adresse = rs.getString("adresse");
                String telephone = rs.getString("telephone");

                Date dateSQL = rs.getDate("dtDeNaissance");
                LocalDate dtDeNaissance = dateSQL.toLocalDate();

                Etudiant e = new Etudiant(
                        id,
                        nie,
                        nom,
                        prenom,
                        email,
                        adresse,
                        telephone,
                        dtDeNaissance
                );

                e.setNiveau(rs.getString("niveau"));
                e.setFiliere(rs.getString("filiere"));

                list.add(e);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    public void addEtudiant(Etudiant e) {

        try {
            Connection conn = DBConnection.getConnection();

            String sql = "INSERT INTO etudiant(nie,nom,prenom,email,adresse,telephone,niveau,filiere) VALUES (?,?,?,?,?,?,?,?)";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, e.getNie());
            ps.setString(2, e.getNom());
            ps.setString(3, e.getPrenom());
            ps.setString(4, e.getEmail());
            ps.setString(5, e.getAdresse());
            ps.setString(6, e.getTelephone());
            ps.setString(7, e.getNiveau());
            ps.setString(8, e.getFiliere());

            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
    
    public void updateEtudiant(Etudiant e) {

        try {

            Connection conn = DBConnection.getConnection();

            String sql = "UPDATE etudiant SET nie=?, nom=?, prenom=?, email=?, adresse=?, telephone=?, niveau=?, filiere=? WHERE id=?";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, e.getNie());
            ps.setString(2, e.getNom());
            ps.setString(3, e.getPrenom());
            ps.setString(4, e.getEmail());
            ps.setString(5, e.getAdresse());
            ps.setString(6, e.getTelephone());
            ps.setString(7, e.getNiveau());
            ps.setString(8, e.getFiliere());
            ps.setLong(9, e.getId());

            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
    
    public void deleteEtudiant(Long id) {

        try {

            Connection conn = DBConnection.getConnection();

            String sql = "DELETE FROM etudiant WHERE id=?";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setLong(1, id);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}