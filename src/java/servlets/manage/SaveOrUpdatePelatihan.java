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
import models.Pelatihan;
import tools.HibernateUtil;

/**
 *
 * @author Nande
 */
@WebServlet(name = "SaveOrUpdatePelatihan", urlPatterns = {"/soupelatihan"})
public class SaveOrUpdatePelatihan extends HttpServlet {

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
        String lembaga = request.getParameter("lembaga");
        String namaPelatihan = request.getParameter("namapelatihan");
        Date tglPelatihan = new Date(request.getParameter("tglpelatihan"));
        String sertifikat = request.getParameter("sertifikat");
        String namaKandidat = request.getParameter("namakandidat");
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            InterfaceController<Pelatihan> icp = new GeneralController<>(HibernateUtil.getSessionFactory(), Pelatihan.class);
            InterfaceController<Kandidat> icka = new GeneralController<>(HibernateUtil.getSessionFactory(), Kandidat.class);
            Kandidat kandidat = new Kandidat(icka.search("namaKandidat", namaKandidat).get(0).getIdKandidat());
            Pelatihan pelatihan = new Pelatihan(new Integer(id), lembaga, namaPelatihan, tglPelatihan, sertifikat, kandidat);
            String message = "Gagal dongs";
            if(icp.saveOrUpdate(pelatihan)) message = "Sukses dongs";
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
