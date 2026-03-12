package com.university.erp.servlet;

import com.university.erp.dao.UtilisateurDAO;
import com.university.erp.model.Utilisateur;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private UtilisateurDAO dao = new UtilisateurDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String mdp = request.getParameter("mdp");

        Utilisateur user = dao.login(email, mdp);

        if(user != null){

            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            response.sendRedirect("dashboard.jsp");

        }else{

            request.setAttribute("error","Email ou mot de passe incorrect");

            request.getRequestDispatcher("login.jsp")
                   .forward(request,response);
        }
    }
}