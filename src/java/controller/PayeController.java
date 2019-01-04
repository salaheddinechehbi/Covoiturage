
package controller;

import beans.Paye;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.PayeService;

@WebServlet(name = "PayeController", urlPatterns = {"/PayeController"})
public class PayeController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/Json;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String fonc = request.getParameter("btn");
            PayeService ps = new PayeService();
            if (fonc.equals("Ajouter")) {
                String nom = request.getParameter("nom");
                ps.create(new Paye(nom));
            }
            else if (fonc.equals("Delete")) {
                int id = Integer.parseInt(request.getParameter("id"));
                ps.delete(ps.findById(id));
            }
            else if (fonc.equals("Modifier")) {
                String nom = request.getParameter("nom");
                int id = Integer.parseInt(request.getParameter("id"));
                Paye p = new Paye();
                p.setNom(nom);
                p.setId(id);
                ps.update(p);
            }
            Gson json = new Gson();
            out.write(json.toJson(ps.findAll()));
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
