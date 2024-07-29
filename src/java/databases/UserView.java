/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package databases;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.*;

/**
 *
 * @author integral
 */
/*
 EMP_ID          | int       | NO   | PRI | NULL    |       |
| EMP_NAME        | char(40)  | YES  |     | NULL    |       |
| EMP_MOBLE       | char(40)  | YES  |     | NULL    |       |
| EMP_EMAIL       | char(40)  | NO   | PRI | NULL    |       |
| EMP_ADDRESS     | char(100) | YES  |     | NULL    |       |
| EMP_PASSWORD    | char(40)  | NO   | PRI | NULL    |       |
| EMP_COUNTRY     | char(50)  | YES  |     | NULL    |       |
| EMP_CITY        | char(50)  | YES  |     | NULL    |       |
| EMP_REGION      | char(50)  | YES  |     | NULL    |       |
| EMP_POSTAL_CODE | int       | YES  |     | NULL    |       |
| EMP_GENDER      | char(25)  | YES  |     | NULL    |       |
| EMP_DATE  */
public class UserView extends HttpServlet {

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
            out.println("<title>Servlet UserView</title>");
            out.println("</head>");
            out.println("<body>");
          //  out.println("<h1>Servlet tere " + request.getContextPath() + "</h1>");
            String emp_id = request.getParameter("id");
            String emp_email = request.getParameter("email");
            String emp_password = request.getParameter("password");
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            try {
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr?useSSL=false", "alquamaa", "Alquama@123");

                PreparedStatement ps = con.prepareStatement("SELECT * FROM EMPLOYEE WHERE EMP_ID = ? AND EMP_EMAIL = ? AND EMP_PASSWORD = ? ");
                ps.setString(1, emp_id);
                ps.setString(2, emp_email);
                ps.setString(3, emp_password);
                ResultSet rs = ps.executeQuery();

                if (rs.next() == true) {
                    HttpSession session = request.getSession();
                    out.print("<h1>" + "successfull " + "</h1>");
                    String name = rs.getString("EMP_NAME");
                    int id = rs.getInt("EMP_ID");
                    String gender = rs.getString("EMP_GENDER");
                    String email = rs.getString("EMP_EMAIL");
                    String address = rs.getString("EMP_ADDRESS");
                    String number = rs.getString("EMP_MOBLE");
                    Date g =rs.getDate("EMP_DATE");
                    request.setAttribute("iddd", emp_id);
                    request.setAttribute("name", name);

                    RequestDispatcher rd = request.getRequestDispatcher("empWorkDasbord.jsp");

                    rd.forward(request, response);
                    session.setAttribute("id", id);
                    session.setAttribute("1", name);
                    session.setAttribute("gender", gender);
                    session.setAttribute("email", email);
                    session.setAttribute("ADD", address);
                    session.setAttribute("no", number);
                  //  session.setAttribute("n1o", g);
//                    RequestDispatcher rd1 = request.getRequestDispatcher("userPorfile.jsp");
//                    rd1.include(request, response);
//
//                    RequestDispatcher rd2 = request.getRequestDispatcher("userAttendance.jsp");
//                   rd2.include(request, response);
////                    //response.sendRedirect("test");
                } else {
                    out.print("<h1 style=' position: absolute; text-align: center; top:40%; left:34%;'>What happens if your info is not verified ?...  </h1>");
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
