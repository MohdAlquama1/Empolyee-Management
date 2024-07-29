/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package databases;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.util.Random;

/**
 *
 * @author integral
 */
public class Project extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Project</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Project at " + request.getContextPath() + "</h1>");
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException cnf) {
                cnf.printStackTrace();
            }

            String pId = request.getParameter("pId");
            int projectId = Integer.parseInt(pId);
            out.print(pId + " " + projectId);
            String eId = request.getParameter("eId");
            int employeeId = Integer.parseInt(eId);
            out.println(eId + "  " + employeeId);
            long millis = System.currentTimeMillis();
            java.sql.Date date = new java.sql.Date(millis);

            try {
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr?useSSL=false", "alquamaa", "Alquama@123");
                PreparedStatement ps = con.prepareStatement("INSERT INTO DEPARTEMENT (DEP_PROJECT_ID,EMP_ID,DEP_DATE_E,DEP_STATUS,DEP_TYPE,DEP_PROJECT_TYPE,DEP_END_TIME)VALUES(?,?,?,?,?,?,?)");
                ps.setInt(1, projectId);
                ps.setInt(2, employeeId);
                ps.setDate(3, date);
                ps.setString(4, "Pending");
                ps.setString(5, request.getParameter("fruitSelect"));
                ps.setString(6, request.getParameter("city"));
                ps.setString(7, request.getParameter("end"));
                ps.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            }

            out.println("</body>");
            out.println("</html>");
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
