
package controller;

import beans.Ville;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.PayeService;
import service.VilleService;

@WebServlet(name = "VilleController", urlPatterns = {"/VilleController"})
public class VilleController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("Application/Json;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            VilleService vs = new VilleService();
            PayeService ps = new PayeService();
            Gson json = new Gson();
            String btn = request.getParameter("btn");
            if (btn.equals("Ajouter")) {
                String nom = request.getParameter("nomville");
                int paye = Integer.parseInt(request.getParameter("paye"));
                double lanville = Double.parseDouble(request.getParameter("lang"));
                double latville = Double.parseDouble(request.getParameter("lat"));
                vs.create(new Ville(nom, latville, lanville, ps.findById(paye)));
                out.write(json.toJson(vs.findAll()));
            }else if (btn.equals("Modifier")) {
                int id = Integer.parseInt(request.getParameter("id"));
                String nom = request.getParameter("nomville");
                int paye = Integer.parseInt(request.getParameter("paye"));
                double lanville = Double.parseDouble(request.getParameter("lang"));
                double latville = Double.parseDouble(request.getParameter("lat"));
                Ville v = new Ville();
                v.setId(id);
                v.setLat(latville);
                v.setLng(lanville);
                v.setNom(nom);
                v.setPaye(ps.findById(paye));
                vs.update(v);
                out.write(json.toJson(vs.findAll()));
            }else if (btn.equals("Delete")) {
                int id = Integer.parseInt(request.getParameter("id"));
                vs.delete(vs.findById(id));
                out.write(json.toJson(vs.findAll()));
            }else if (btn.equals("Find")) {
                int id = Integer.parseInt(request.getParameter("id"));
                out.write(json.toJson(vs.findById(id)));
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
