/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Lunch;
import model.ejb.LunchDAO;

/**
 *
 * @author Rosen
 */
@WebServlet(name = "LunchServlet", urlPatterns = {"/LunchServlet"})
public class LunchServlet extends HttpServlet {
    @EJB private LunchDAO lunchDAO;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String lunchID = request.getParameter("id");
        String name = request.getParameter("name");
        String week = request.getParameter("week");
        String day = request.getParameter("day");
        String operation = request.getParameter("operation");
        
        Lunch lunch = new Lunch(lunchID, name, week, day);
        
        if(operation.equalsIgnoreCase("Add")){
            lunchDAO.addLunch(lunch);
            System.out.println(lunch.getLunchID());
            request.setAttribute("lunch", lunch);
        } else if(operation.equalsIgnoreCase("Edit")){
            lunchDAO.editLunch(lunch);
            Lunch searchedLunch = lunchDAO.getLunch(lunchID);
            request.setAttribute("lunch", searchedLunch);
        } else if(operation.equalsIgnoreCase("Delete")){
            lunchDAO.deleteLunch(lunch);
        } else if(operation.equalsIgnoreCase("Search")){
            Lunch searchedLunch = lunchDAO.getLunch(lunchID);
            request.setAttribute("lunch", searchedLunch);
        }
        request.getRequestDispatcher("lunchInfo.html").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
