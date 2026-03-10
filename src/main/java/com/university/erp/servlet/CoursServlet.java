package com.university.erp.servlet;

import com.university.erp.dao.CoursDAO;
import com.university.erp.model.Cours;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/cours")
public class CoursServlet extends HttpServlet {

    private CoursDAO dao = new CoursDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("delete".equals(action)) {

            Long id = Long.parseLong(request.getParameter("id"));

            dao.deleteCours(id);

            response.sendRedirect("cours");
            return;
        }

        List<Cours> list = dao.getAllCours();

        request.setAttribute("cours", list);

        request.getRequestDispatcher("cours.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        String code = request.getParameter("code");
        String nom = request.getParameter("nom");
        int credits = Integer.parseInt(request.getParameter("credits"));
        int volumeHoraire = Integer.parseInt(request.getParameter("volumeHoraire"));

        List<String> niveaux = Arrays.asList(request.getParameter("niveaux").split(","));
        List<String> filieres = Arrays.asList(request.getParameter("filieres").split(","));

        if ("add".equals(action)) {

            Cours c = new Cours(null, code, nom, credits, volumeHoraire);

            c.getNiveauxAutorises().addAll(niveaux);
            c.getFilieresAutorises().addAll(filieres);

            dao.addCours(c);
        }

        else if ("update".equals(action)) {

            Long id = Long.parseLong(request.getParameter("id"));

            Cours c = new Cours(id, code, nom, credits, volumeHoraire);

            c.getNiveauxAutorises().addAll(niveaux);
            c.getFilieresAutorises().addAll(filieres);

            dao.updateCours(c);
        }

        response.sendRedirect("cours");
    }
}