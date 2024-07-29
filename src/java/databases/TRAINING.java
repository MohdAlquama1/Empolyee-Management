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
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author integral
 */
public class TRAINING extends HttpServlet {

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
            out.println("<title>Servlet TRAINING</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TRAINING at " + request.getContextPath() + "</h1>");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException cnf) {
                cnf.printStackTrace();
            }

            String dateForm = request.getParameter("f1");
            String dateTo = request.getParameter("f2");
            String traingId = request.getParameter("tId1");
            int trainingIdCon = Integer.parseInt(traingId);
            String employeeId = request.getParameter("eId1");
            int employeeIdCon = Integer.parseInt(employeeId);

            try {
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr?useSSL=false", "alquamaa", "Alquama@123");
                PreparedStatement st = con.prepareStatement("SELECT * FROM EMPLOYEE WHERE EMP_ID = ?");
                st.setInt(1, employeeIdCon);
                ResultSet rs = st.executeQuery();
                /*PreparedStatement st2=con.prepareStatement("SELECT * FROM TRAINING WHERE TR_ID = ?");
                    st2.setInt(1, trainingIdCon);
                    ResultSet rs2 = st2.executeQuery();*/
                if (rs.next() == true) {
                    SimpleDateFormat htmlDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                    Date date = htmlDateFormat.parse(dateForm);
                    java.sql.Date sqlForm1 = new java.sql.Date(date.getTime());

                    SimpleDateFormat htmlDateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
                    Date date2 = htmlDateFormat2.parse(dateTo);
                    java.sql.Date sqlTo2 = new java.sql.Date(date2.getTime());

                    PreparedStatement ps = con.prepareStatement("INSERT INTO TRAINING (TR_ID,TR_NAME,TR_TYPE,TR_PLACE,EMP_ID,TR_MOUNTH_FROM,TR_MOUNTH_TO)VALUES(?,?,?,?,?,?,?)");
                    ps.setInt(1, trainingIdCon);
                    ps.setString(2, request.getParameter("name"));
                    ps.setString(3, request.getParameter("fruitSelect"));
                    ps.setString(4, request.getParameter("city"));
                    ps.setInt(5, employeeIdCon);
                    ps.setDate(6, sqlForm1);
                    ps.setDate(7, sqlTo2);
                    ps.executeUpdate();
                } else {
                    out.print("<h1 style=' position: absolute; text-align: center; top:40%; left:34%;'>What happens HR if your info is not verified ?...  </h1>");

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
