package controller;

import beans.Trajet;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.TrajetService;
import service.UserService;
import service.VilleService;

@WebServlet(name = "TrajetController", urlPatterns = {"/TrajetController"})
public class TrajetController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("Application/json;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            TrajetService ts = new TrajetService();
            VilleService vs = new VilleService();
            UserService us = new UserService();
            int user = Integer.parseInt(request.getParameter("user"));
            int villeA = Integer.parseInt(request.getParameter("villeA"));
            int villeD = Integer.parseInt(request.getParameter("villeD"));
            int route = Integer.parseInt(request.getParameter("route"));
            int place = Integer.parseInt(request.getParameter("place"));
            String heureA = request.getParameter("heureA");
            String heureD = request.getParameter("heureD");
            String com = request.getParameter("com");
            String dateA = request.getParameter("dateA");
            String dateD = request.getParameter("dateD");
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Date da = format.parse(dateA);
            Date dd = format.parse(dateD);
            ts.create(new Trajet(vs.findById(villeD), dd, heureD, vs.findById(villeA), da, heureA, place, com, route, us.findById(user)));
            Gson js =  new Gson();
            out.write(js.toJson(ts.findAll()));
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
            Logger.getLogger(TrajetController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(TrajetController.class.getName()).log(Level.SEVERE, null, ex);
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
