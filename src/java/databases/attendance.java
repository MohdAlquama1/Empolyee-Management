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
import java.text.SimpleDateFormat;
import java.util.Date;


import java.sql.ResultSet;
/**
 *
 * @author integral
 */
public class attendance extends HttpServlet {

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
            out.println("<title>Servlet attendance</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet attendance at " + request.getContextPath() + "</h1>");
           
           
            
             
             try{
                Class.forName("com.mysql.cj.jdbc.Driver");
            }catch(ClassNotFoundException cnf){
                cnf.printStackTrace();
            }
             try{
                
                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr?useSSL=false","alquamaa","Alquama@123");
                String AttendanceId = request.getParameter("attId");
                int att= Integer.parseInt(AttendanceId);
                String EmpEmail= request.getParameter("empEmail");
                String Date = request.getParameter("attDate");
                String Type = request.getParameter("type");
                String Entry = request.getParameter("entry");
                String LeaveId = request.getParameter("leaveId");
                String Exit = request.getParameter("exit");
                String EmpId=request.getParameter("empId");
                int emp = Integer.parseInt(EmpId);
                 SimpleDateFormat htmlDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                    Date date = htmlDateFormat.parse(Date);
                    java.sql.Date sqlForm1 = new java.sql.Date(date.getTime());
                
                PreparedStatement pr  = con.prepareStatement("SELECT * FROM EMPLOYEE WHERE EMP_ID = ? AND EMP_EMAIL = ?");
                pr.setInt(1, emp);
                pr.setString(2, EmpEmail);
                
                ResultSet rs =pr.executeQuery();
                boolean boo = rs.next();
                if(boo == true){
                out.print("successfull");
                out.println("<h1>");
                out.println(AttendanceId + Date + Type + Entry + LeaveId + Exit + EmpId );
                out.println("</h1>");
                PreparedStatement ps = con.prepareStatement("INSERT INTO ATTENDANCE(ATT_ID,ATT_DATE,ATT_TYPE,ATT_ENTRY_TIME,ATT_LEAVE,ATT_EXIT_TIME,EMP_ID)VALUES(?,?,?,?,?,?,?)");
                ps.setInt(1, att);
                ps.setDate(2, sqlForm1);
                ps.setString(3, Type);
                ps.setString(4, Entry);
                ps.setString(5, LeaveId);
                ps.setString(6, Exit);
                ps.setInt(7, emp);
                ps.executeUpdate();
                
                out.println("ssssssssssssssssssssssssssssssssssssssssss");
                
                
                }else{
                     //RequestDispatcher re = request.getRequestDispatcher("attendance.jsp");re.forward(request, response);
                //    out.print("not success");
                    out.println("<script type=\"text/javascript\">");
       out.println("alert('User or password incorrect');");
       out.println("</script>");
                   
                }
             }catch(Exception e ){
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
