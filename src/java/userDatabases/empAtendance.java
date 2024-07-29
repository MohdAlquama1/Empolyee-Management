/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package userDatabases;

import jakarta.resource.cci.ResultSet;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author integral
 */
public class empAtendance extends HttpServlet {

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
            out.println("<title>Servlet empAttendance f</title>");
            out.println("</head>");
            out.println("<body>");
//            out.println("<h1>Servlet empAttendance " + request.getContextPath() + "</h1>");
            HttpSession get = request.getSession();
            String f = (String) get.getAttribute("1");
            int emp = (int) get.getAttribute("id");
            // out.print(emp);
            String s = request.getParameter("Aid");
            int attendance = Integer.parseInt(s);
            String type = request.getParameter("type");
            String leave = request.getParameter("leaveId");

            int leaveNo = Integer.parseInt(leave);
            long millis = System.currentTimeMillis();
            java.sql.Date date = new java.sql.Date(millis);
            // System.out.println(date);
            Date date12 = new Date();
            SimpleDateFormat formatTime = new SimpleDateFormat("hh.mm.aa");
            // hh = hours in 12hr format
            // mm = minutes
            // aa = am/pm
            String time = formatTime.format(date12); // changing the format of 'date'
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException cnf) {
                cnf.printStackTrace();
            }

            try {
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr?useSSL=false", "alquamaa", "Alquama@123");
                PreparedStatement st = connection.prepareStatement("SELECT * FROM ATTENDANCE WHERE ATT_ID = ? AND EMP_ID = ? ");
                st.setInt(1, attendance);
                st.setInt(2, emp);
                java.sql.ResultSet rs = st.executeQuery();
                if (rs.next() == true) {
                    PreparedStatement statement = connection.prepareStatement("INSERT INTO ATTENDANCE(ATT_ID,ATT_DATE,ATT_TYPE,ATT_ENTRY_TIME,ATT_LEAVE,EMP_ID)VALUES(?,?,?,?,?,?)");
                    statement.setInt(1, attendance);
                    statement.setDate(2, date);
                    statement.setString(3, type);
                    statement.setString(4, time);
                    statement.setInt(5, leaveNo);
                    statement.setInt(6, emp);
                    statement.executeUpdate();
                    response.sendRedirect("userAttendance.jsp");
                } else {
                    out.print("<h1 style=' position: absolute; text-align: center; top:40%; left:30%;'>What happens " + f + " if your info is not verified ?...  </h1>");
                }
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
