/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package databases;

import jakarta.servlet.RequestDispatcher;
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
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


/**
 *
 * @author integral
 */
public class newEmp extends HttpServlet {

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
            out.println("<title>Servlet newEmp</title>");
            out.println("</head>");
            out.println("<body>");
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException cnf) {
                cnf.printStackTrace();
            }
            //String id =request.getParameter("emp_id");
            /* String email = request.getParameter("email");
            String password = request.getParameter("password"); */
            try {
                String name = request.getParameter("name");
                if(name.isEmpty() ){
                      
                    out.println("<script type=\"text/javascript\">");
       out.println("alert('User or password incorrect');");
       out.println("</script>");
       response.sendRedirect("newEmp.jsp");
                }else{
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr?useSSL=false", "alquamaa", "Alquama@123");
                String query = "select max(EMP_ID) FROM EMPLOYEE";     
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                rs.next();
                int maxId = rs.getInt(1);
                maxId++;
                PreparedStatement ps = con.prepareStatement("INSERT INTO EMPLOYEE (EMP_ID,EMP_NAME,EMP_MOBLE,EMP_EMAIL,EMP_ADDRESS,EMP_PASSWORD,EMP_COUNTRY,EMP_CITY,EMP_REGION,EMP_POSTAL_CODE,EMP_GENDER,EMP_DATE)VALUES(?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setInt(1, maxId);
                String code=request.getParameter("postalCode");
                 int postalCode=Integer.parseInt(code); 
                String address1=request.getParameter("address1");
                String address2 =request.getParameter("address2");
                String addresss = address1+" "+address2;
                String date1 = request.getParameter("date");
                  SimpleDateFormat htmlDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date date = htmlDateFormat.parse(date1);

            java.sql.Date sqlDate = new java.sql.Date(date.getTime());



                ps.setString(2, name);
                ps.setString(3, request.getParameter("number"));
                ps.setString(4,request.getParameter("email"));
                ps.setString(5,addresss );
                ps.setString(6, request.getParameter("password"));
                ps.setString(7, request.getParameter("country"));
                ps.setString(8, request.getParameter("city"));
                ps.setString(9, request.getParameter("region"));
                ps.setInt(10, postalCode);
                ps.setString(11, request.getParameter("gender12"));
                ps.setDate(12,sqlDate);
                ps.executeUpdate();
                }
                
            } catch (Exception e ) {
                e.printStackTrace();
                 
            }
            
//          
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

    private RequestDispatcher RequestDispatcher(String userView) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
