package com.university.erp.dao;

import com.university.erp.model.Utilisateur;
import com.university.erp.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UtilisateurDAO {

    public Utilisateur login(String email,String mdp){

        Utilisateur user = null;

        try{

            Connection conn = DBConnection.getConnection();

            String sql="SELECT * FROM utilisateurs WHERE email=? AND mdp=?";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1,email);
            ps.setString(2,mdp);

            ResultSet rs = ps.executeQuery();

            if(rs.next()){

                user = new Utilisateur();

                user.setId(rs.getLong("id"));
                user.setEmail(rs.getString("email"));
                user.setMdp(rs.getString("mdp"));
                user.setRole(rs.getString("role"));

            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return user;
    }
}