package com.university.erp.dao;

import com.university.erp.model.Cours;
import com.university.erp.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CoursDAO {

    public List<Cours> getAllCours() {

        List<Cours> list = new ArrayList<>();

        try {

            Connection conn = DBConnection.getConnection();

            String sql = "SELECT * FROM cours";

            Statement st = conn.createStatement();

            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {

                Cours c = new Cours();

                c.setId(rs.getLong("id"));
                c.setCode(rs.getString("code"));
                c.setNom(rs.getString("nom"));
                c.setCredits(rs.getInt("credits"));
                c.setVolumeHoraire(rs.getInt("volume_horaire"));

                String niveaux = rs.getString("niveaux_autorises");
                String filieres = rs.getString("filieres_autorises");

                if (niveaux != null)
                    c.getNiveauxAutorises().addAll(Arrays.asList(niveaux.split(",")));

                if (filieres != null)
                    c.getFilieresAutorises().addAll(Arrays.asList(filieres.split(",")));

                list.add(c);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }


    public void addCours(Cours c) {

        try {

            Connection conn = DBConnection.getConnection();

            String sql = "INSERT INTO cours(code,nom,credits,volume_horaire,niveaux_autorises,filieres_autorises) VALUES (?,?,?,?,?,?)";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, c.getCode());
            ps.setString(2, c.getNom());
            ps.setInt(3, c.getCredits());
            ps.setInt(4, c.getVolumeHoraire());
            ps.setString(5, String.join(",", c.getNiveauxAutorises()));
            ps.setString(6, String.join(",", c.getFilieresAutorises()));

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void updateCours(Cours c) {

        try {

            Connection conn = DBConnection.getConnection();

            String sql = "UPDATE cours SET code=?,nom=?,credits=?,volume_horaire=?,niveaux_autorises=?,filieres_autorises=? WHERE id=?";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, c.getCode());
            ps.setString(2, c.getNom());
            ps.setInt(3, c.getCredits());
            ps.setInt(4, c.getVolumeHoraire());
            ps.setString(5, String.join(",", c.getNiveauxAutorises()));
            ps.setString(6, String.join(",", c.getFilieresAutorises()));
            ps.setLong(7, c.getId());

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void deleteCours(Long id) {

        try {

            Connection conn = DBConnection.getConnection();

            String sql = "DELETE FROM cours WHERE id=?";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setLong(1, id);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}