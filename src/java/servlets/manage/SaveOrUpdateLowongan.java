/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.manage;

import controllers.GeneralController;
import controllers.InterfaceController;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Kandidat;
import models.Lowongan;
import tools.HibernateUtil;

/**
 *
 * @author Nande
 */
@WebServlet(name = "SaveOrUpdateLowongan", urlPatterns = {"/soulowongan"})
public class SaveOrUpdateLowongan extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        RequestDispatcher dis = null;
        String id = request.getParameter("id");
        String namaPosisi = request.getParameter("namaposisi");
        String syarat = request.getParameter("syarat");
        Date batas = new Date(request.getParameter("batas"));
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            InterfaceController<Lowongan> icl = new GeneralController<>(HibernateUtil.getSessionFactory(), Lowongan.class);
            InterfaceController<Kandidat> icka = new GeneralController<>(HibernateUtil.getSessionFactory(), Kandidat.class);
            Lowongan lowongan = new Lowongan(new Integer(id), namaPosisi, syarat, batas);
            String message = "Gagal dongs";
            if(icl.saveOrUpdate(lowongan)) message = "Sukses dongs";
            session.setAttribute("message", message);
            dis = request.getRequestDispatcher("??");
            dis.forward(request, response);
        }
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
