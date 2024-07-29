<%-- 
    Document   : userPorfile
    Created on : 28-Apr-2024, 4:04:54 AM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@page import="jakarta.servlet.http.HttpSession" %>
<%@page language="java" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <style>
        .center{
            position: absolute;
            background-color: gray;
            height: 30%;
            width: 70%;
            left: 36%;
            top:20%;
            border-radius: 50%;
        }
        .name{
            position: absolute;
            background: red;
            letter-spacing: 2px;
            left: 34%;

        }
        .secandDiv{
            position: absolute;
            top: 15%;
            height: 95%;
            width: 80%;
            background: chartreuse;
            left: 10%;
            font-size: large;
        }
        .section2{
            position: relative;
            top: -19%;
            left: 50%;
            background: white;
            height: 100%;
            width: 50%;
        }


        .card{
            position:  absolute;
            height: 50%;
            width: 50%;
            box-shadow: 0 0 20px 0px rgba(0,0,0,.5);
            left: 25%;
            top: 20%;


        }
        .imag{

            width: 100%;
            height: 10vh;
            display: flex;

        }
        .imag img{

            position: absolute;
            height: 300px;
            width: 300px;
            border-radius: 50%;
            top: 9%;
            left: 15%;
        }
        .gradienttext{
            position: absolute;

        }
        .detail{
            position: absolute;

            top: 30%;
            left: 50%;
            font-size: larger;
        }
    </style>
    <body>
        <%
                  String name = (String) session.getAttribute("1"); 
                  int id = (int) session.getAttribute("id"); 
                  String gender = (String) session.getAttribute("gender"); 
                  String E = (String) session.getAttribute("email"); 
                   String s1 = name.substring(0, 1).toUpperCase(); 
                   String add = (String) session.getAttribute("ADD");
                    String no = (String) session.getAttribute("no");
                    // first letter = J 
                  
        %>
        <nav class="navbar navbar-expand-lg navbar-light bg-body-tertiary">
            <!-- Container wrapper -->
            <div class="container-fluid">
                <!-- Toggle button -->
                <button
                    data-mdb-collapse-init
                    class="navbar-toggler"
                    type="button"
                    data-mdb-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <i class="fas fa-bars"></i>
                </button>

                <!-- Collapsible wrapper -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Navbar brand -->
                    <a class="" href="#">
                        <img
                            src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
                            height="40"
                            alt="MDB Logo"
                            loading="lazy"
                            />
                    </a>
                    <!-- Left links -->
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="#" onclick="history.back()">Dashboard</a>
                        </li>
<!--                        <li class="nav-item">
                            <a class="nav-link" href="#">Team</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Projects</a>
                        </li>-->
                    </ul>
                    <!-- Left links -->
                </div>
                <!-- Collapsible wrapper -->

                <!-- Right elements -->
                <div class="d-flex align-items-center">
                    <!-- Icon -->
                    <a class="link-secondary me-3" href="#">
                        <i class="fas fa-shopping-cart"></i>
                    </a>

                    <!-- Notifications -->
                    <div class="dropdown">

                        <ul
                            class="dropdown-menu dropdown-menu-end"
                            aria-labelledby="navbarDropdownMenuLink"
                            >
                            <li>
                                <a class="dropdown-item" href="index.jsp">Some news</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Another news</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </li>
                        </ul>
                    </div>
                    <!-- Avatar -->



                    <a> <%= s1 %></a>


                    <!-- Right elements -->
                </div>
                <!-- Container wrapper -->
        </nav>

        <%--         <strong>name</strong>

        <label><%= name %></label>
        <strong> Employee id </strong>
        <label><%= id %></label>
        <div class="center">
            <i class="name"><%= name %></i>
            <div class="secandDiv">
                <strong> Employee id </strong>
                <br>
                <label><%= id %></label>
                <br><!-- comment -->
                <label>Email</label>
                <br>
                <%= E %>
                <div class="section2">
                    <strong>Gender</strong>
                    <br>
                    <%= gender %>
                </div>
            </div>



        </div>
                
        --%>
        <% if(gender.equals("Female")){   %>
        <div class="card">
            <div class="imag">
                <!--                  <img src="https://cdn.pixabay.com/photo/2020/10/19/09/44/woman-5667299__480.jpg" alt="Profile Image">-->
                <img src="https://png.pngtree.com/png-vector/20240221/ourlarge/pngtree-cute-sticker-a-girl-holding-flower-bouquet-cartoon-character-png-image_11754885.png" alt="Profile Image">
            </div>
        </div>
        <% } else{ %>
        <div class="card">
            <div class="imag">
                <img src=" <div class="card">
                <div class="imag">
                    <img src="https://avatars.githubusercontent.com/u/26429638?v=4" alt="Profile Image">

                    <% } %>
                    <div class="detail">
                        <table>
                            <tr>
                                <td>Name :</td>
                                <td><%= name%></td>
                            </tr>
                            <tr>
                                <td>Gender :</td>
                                <td><%= gender %></td>
                            </tr>
                            <tr>
                                <td>Mobile :</td>
                                <td><%= no%></td>
                            </tr>
                            <tr>
                                <td>Email :</td>
                                <td><%= E %></td>
                            </tr>
                            <tr>
                                <td>Address :</td>
                                <td><%= add %></td>
                            </tr>
                        </table>
                    </div>
                            <form  action="./userPorfile.jsp" style="position: absolute;top: 90%; left: 47%;">
                        <input type="submit" value="Logout" name="submit" class="btn btn-primary"/>
                    </form>

                    <%
                    String submit =request.getParameter("submit");
                    
                    try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                    }        
                    try {
                    if(submit.equals("Logout")){   
                    HttpSession session2 = request.getSession();
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr?useSSL=false", "alquamaa", "Alquama@123");
                    PreparedStatement ps = con.prepareStatement(" UPDATE ATTENDANCE SET ATT_EXIT_TIME = ? WHERE ATT_DATE = ? AND EMP_ID= ?");
                         long millis = System.currentTimeMillis();
            java.sql.Date date = new java.sql.Date(millis);
            
            java.util.Date date12 = new java.util.Date();
            java.text.SimpleDateFormat formatTime = new java.text.SimpleDateFormat("hh.mm.aa");
            // hh = hours in 12hr format
            // mm = minutes
            // aa = am/pm
            String time = formatTime.format(date12); // changing the format of 'date'
                        ps.setString(1,time);
                        ps.setDate(2,date);
                        ps.setInt(3,id);
                       
                     ps.executeUpdate();
                     response.sendRedirect("UserView.jsp");
                     session2.invalidate();
                        } // if
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %>




                    <!--   <section>
                                         
                       <div class="card1">
                          
                               <div class="right-container">
                                 <h3 class="gradienttext">Profile Details</h3>
                               
                                 <div class="social-icons">
                                   <a href="#"><i class="fa fa-facebook-f"></i></a>
                                   <a href="#"><i class="fa fa-twitter"></i></a>
                                   <a href="#"><i class="fa fa-linkedin"></i></a>
                                   <a href="#"><i class="fa fa-github"></i></a>
                                 </div>
                                 <div class="credit">Made with <span style="color:tomato;font-size:20px;">❤ </span>by<a href="https://www.learningrobo.com/"> Learning Robo</a></div>
                               </div>
                             </div>
                       </div>
                   </section> -->

                    </body>
                    </html>
