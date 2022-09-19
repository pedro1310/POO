/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package api;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Fatec
 */
@WebServlet(name = "PedroRochaApiXmlServlet", urlPatterns = {"/PedroRocha-dados.xml"})
public class PedroRochaApiXmlServlet extends HttpServlet {

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
        response.setContentType("application/xml;charset=UTF-8");
        response.getWriter().println("<?xml version='1.0' encoding='UTF-8'?>");
        response.getWriter().println("<server>");
        response.getWriter().println("<aluno ra='1290482112016'>Pedro Henrique Garcia Rocha</aluno>");
        response.getWriter().println("<disciplinas>"
                + "<disciplina sigla='IBD002'>Banco de Dados</disciplina>"
                + "<disciplina sigla='IES300'>Engenharia de Software III</disciplina>"
                + "<disciplina sigla='ILPOO7'>Programação Orientada a Objetos</disciplina>"
                + "<disciplina sigla='ILP512'>Linguagem de Programação IV - INTERNET</disciplina>"
                + "<disciplina sigla='ISO200'>Sistemas Operacionas II</disciplina>"
                + "<disciplina sigla='LIN400'>Inglês IV</disciplina>"
                + "<disciplina sigla='TTG001'>Metodologia de Pesquisa Científico-Tecnológica</disciplina>"
                + "</disciplinas>");
        response.getWriter().println("</server>");
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
   //RA: 1290482112016