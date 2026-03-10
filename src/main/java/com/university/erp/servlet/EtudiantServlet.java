package com.university.erp.servlet;

import com.university.erp.dao.EtudiantDAO;
import com.university.erp.model.Etudiant;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/etudiants")
public class EtudiantServlet extends HttpServlet {

    private EtudiantDAO dao = new EtudiantDAO();

    // LISTE ETUDIANTS
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        // DELETE
        if ("delete".equals(action)) {

            Long id = Long.parseLong(request.getParameter("id"));

            dao.deleteEtudiant(id);

            response.sendRedirect("etudiants");
            return;
        }

        // LIST
        List<Etudiant> list = dao.getAllEtudiants();

        request.setAttribute("etudiants", list);

        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    }

    // ADD ET UPDATE
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        // ADD
        if ("add".equals(action)) {

            String nie = request.getParameter("nie");
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");

            Etudiant e = new Etudiant(null, nie, nom, prenom, null, null, null, null);

            dao.addEtudiant(e);
        }

        // UPDATE
        else if ("update".equals(action)) {

            Long id = Long.parseLong(request.getParameter("id"));

            String nie = request.getParameter("nie");
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String email = request.getParameter("email");
            String adresse = request.getParameter("adresse");
            String telephone = request.getParameter("telephone");
            String niveau = request.getParameter("niveau");
            String filiere = request.getParameter("filiere");

            Etudiant e = new Etudiant(id, nie, nom, prenom, email, adresse, telephone, null);

            e.setNiveau(niveau);
            e.setFiliere(filiere);

            dao.updateEtudiant(e);
        }

        response.sendRedirect("etudiants");
    }
}