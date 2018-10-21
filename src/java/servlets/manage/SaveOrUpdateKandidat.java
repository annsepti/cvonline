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
import java.text.ParseException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Kandidat;
import tools.HibernateUtil;
import tools.Tools;

/**
 *
 * @author Nande
 */
@WebServlet(name = "SaveOrUpdateKandidat", urlPatterns = {"/soukandidat"})
public class SaveOrUpdateKandidat extends HttpServlet {

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
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        Tools tools = new Tools();
        HttpSession session = request.getSession();
        RequestDispatcher dis = null;
        String idKandidat = request.getParameter("idkandidat");
        String namaKandidat = request.getParameter("namakandidat");
        String email = request.getParameter("email");
        String nope = request.getParameter("nope");
        String notelp = request.getParameter("notelp");
        String nopeKerabat = request.getParameter("nopekerabat");
        String namaKerabat = request.getParameter("namakerabat");
        String tempatLahir = request.getParameter("tempatlahir");
        String tglLahir = request.getParameter("tgllahir");
        Date date = tools.stringToDate(tools.formatDateString(tglLahir));
        String nik = request.getParameter("nik");
        String alamatKtp = request.getParameter("alamatktp");
        String alamatSkrg = request.getParameter("alamatskrg");
        String npwp = request.getParameter("npwp");
        String agama = request.getParameter("agama");
        String jenisKelamin = request.getParameter("jeniskelamin");
        String statusNikah = request.getParameter("statusnikah");
        String username = email;
        String password = idKandidat + tglLahir;
        String statusKandidat = request.getParameter("statuskandidat");
        String statusLamaran = request.getParameter("statuslamaran");
        String cv = request.getParameter("cv");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            InterfaceController<Kandidat> ic = new GeneralController<>(HibernateUtil.getSessionFactory(), Kandidat.class);
            Kandidat kandidat = new Kandidat(new Integer(idKandidat), namaKandidat, email, nope,
                    notelp, nopeKerabat, namaKerabat, tempatLahir, date, nik, alamatKtp,
                    alamatSkrg, npwp, agama, jenisKelamin, statusNikah, username, password,
                    new byte[100], statusKandidat, statusLamaran, cv);
            String message = "Gagal dongs";
            boolean isSave = true;
            if (ic.getById(kandidat.getIdKandidat()) != null) {
                isSave = false;
            }

            session.setAttribute("message", message);
            if (isSave) {
                int idBaru = ic.getNewId();
                Kandidat kandidatSave = new Kandidat(idBaru, namaKandidat, email, date, username);
                kandidat.setPassword(tools.generatePassword(kandidatSave));
                if (ic.saveOrUpdate(kandidatSave)) {
                    message = "Sukses dongs";
                    tools.sendMessage(kandidatSave, 1);
                }
                out.print("alert(Silahkan buka email anda untuk melanjutkan!)");
                response.sendRedirect("./home.jsp");
            } else {
                if (ic.saveOrUpdate(kandidat)) {
                    message = "Sukses dongs";
                    //kirim email di sini gaes
                }
                dis = request.getRequestDispatcher("#");
                dis.forward(request, response);
            }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(SaveOrUpdateKandidat.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(SaveOrUpdateKandidat.class.getName()).log(Level.SEVERE, null, ex);
        }
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
