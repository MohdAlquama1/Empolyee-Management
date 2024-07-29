<%-- 
    Document   : userProject
    Created on : 07-May-2024, 7:36:26 PM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@page import="java.sql.*"%>
<%@page import="java.lang.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
            }
            * {
                box-sizing: border-box;
            }

            /* Button used to open the contact form - fixed at the bottom of the page */
            .open-button {
                background-color: #555;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                opacity: 0.8;
                position: fixed;
                bottom: 23px;
                right: 28px;
                width: 280px;
            }

            /* The popup form - hidden by default */
            .form-popup {
                display: none;
                position: fixed;
                bottom: 0;
                right: 15px;
                border: 3px solid #f1f1f1;
                z-index: 9;
            }

            /* Add styles to the form container */
            .form-container {
                max-width: 300px;
                padding: 10px;
                background-color: white;
            }

            /* Full-width input fields */
            .form-container input[type=text], .form-container input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                border: none;
                background: #f1f1f1;
            }

            /* When the inputs get focus, do something */
            .form-container input[type=text]:focus, .form-container input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            /* Set a style for the submit/login button */
            .form-container .btn {
                background-color: #04AA6D;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                width: 100%;
                margin-bottom:10px;
                opacity: 0.8;
            }

            /* Add a red background color to the cancel button */
            .form-container .cancel {
                background-color: red;
            }

            /* Add some hover effects to buttons */
            .form-container .btn:hover, .open-button:hover {
                opacity: 1;
            }
            .select-box select {
                height: 100%;
                width: 100%;
                outline: none;
                border: none;
                color: #707070;
                font-size: 1rem;

            }
        </style>
    </head>
    <body>
        <%
     String name = (String) session.getAttribute("1"); 
             String s1 = name.substring(0, 1).toUpperCase();
              
                int id = (int) session.getAttribute("id"); 
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
                    <a class="navbar-brand mt-2 mt-lg-0" href="#">
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
                        <li class="nav-item">
                            <a class="nav-link" href="userAttendance.jsp">Attendance</a>
                        </li>
                        
                         <li class="nav-item">
                             <a class="nav-link" href="userSalary.jsp">Salary</a>
                        </li>
                    </ul>
                    <!-- Left links -->
                </div>
                <!-- Collapsible wrapper -->

                <!-- Right elements -->
                

                    <!-- Notifications -->
                    <div class="dropdown">

                        <ul
                            class="dropdown-menu dropdown-menu-end"
                            aria-labelledby="navbarDropdownMenuLink"
                            >
                            <li>
                                <a class="dropdown-item" href="#">Some news</a>
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
                    <div class="dropdown">


                        <a href="userPorfile.jsp"><%= s1 %> </a>


                        <ul
                            class="dropdown-menu dropdown-menu-end"
                            aria-labelledby="navbarDropdownMenuAvatar"
                            >
                            <li>
                                <a class="dropdown-item" href="#">My profile</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Settings</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- Right elements -->
            </div>
            <!-- Container wrapper -->




        </nav>
        <sql:setDataSource  var="s" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/hr?allowPublicKeyRetrieval=true&useSSL=false" password="Alquama@123" user="alquamaa"
                            />
        <sql:query dataSource="${s}" var="r">
            SELECT * FROM DEPARTEMENT WHERE EMP_ID = <%=id%> ;

        </sql:query>
        <div class="container-fluid float-sm-left">
            <table class="table table-striped">
                <tr>
                    <td>Project id</td>
                    <td>Being date</td>
                    <td>Summit date</td>
                    <td>Status</td>
                    <td>Role</td>
                    <td>Project type</td>
                    <td>Time end</td>



                </tr>
                <c:forEach items="${r.rows}" var="rs">
                    <tr>
                        <td> <c:out value="${rs.DEP_PROJECT_ID}" ></c:out>   </td>
                        <td><c:out value="${rs.DEP_DATE_E}" ></c:out>  </td>
                        <td><c:out value="${rs.DEP_DATE_X}" ></c:out> </td>
                        <td><c:out value="${rs.DEP_STATUS}" ></c:out> </td>
                        <td><c:out value="${rs.DEP_TYPE}" ></c:out> </td>
                        <td><c:out value="${rs.DEP_PROJECT_TYPE}" ></c:out> 
                        </td><td><c:out value="${rs.DEP_END_TIME}" ></c:out> </td>

                        </tr>
                </c:forEach> 
            </table>
        </div>


        
        <!--        <form action="./userProject.jsp" method="post">  
                </form>-->
        <button class="open-button" onclick="openForm()">Open Form</button>

        <div class="form-popup" id="myForm">
            <form action="./userProject.jsp" class="form-container">
                <h1>Update  detail
                </h1>

                <label for="email"><b>Project id</b></label>
                <input type="text" placeholder="Enter project id" name="pid" required><!-- comment -->
                <br>
                <br>
                <div class="select-box">
                    <select name="type" >
                        <option value=""hidden="" >Status type</option>
                        <option value="Success">Success</option>
                        <option value="extend date">extend date</option>
                        <option value="Other">Other</option>
                    </select>
                </div>
                <br>
                <label for="psw"><b>Date</b></label>
                &nsqsupe;
                <input type="date" name="date" required>

                <button type="submit" class="btn">Update</button>
                <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
            </form>
        </div>

        <script>
            function openForm() {
                document.getElementById("myForm").style.display = "block";
            }

            function closeForm() {
                document.getElementById("myForm").style.display = "none";
            }
        </script>




        <%
       String Date=request.getParameter("date");
       String type=request.getParameter("type");
       String pid=request.getParameter("pid");
      
     
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    
        try {
        int projectId= Integer.parseInt(pid);
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hr?useSSL=false", "alquamaa", "Alquama@123");
            PreparedStatement ps = con.prepareStatement("UPDATE DEPARTEMENT SET DEP_DATE_X = ?,DEP_STATUS= ? WHERE DEP_PROJECT_ID = ? AND EMP_ID = ? " ) ;
                    java.text.SimpleDateFormat formate = new java.text.SimpleDateFormat("yyyy-MM-dd");
                    java.util.Date date = formate.parse(Date);
                    java.sql.Date sqlForm1 = new java.sql.Date(date.getTime());
                     ps.setDate(1,sqlForm1);
                     ps.setString(2, type);
                     ps.setInt(3,projectId);
                     ps.setInt(4,id);
                     ps.executeUpdate();
            //String inputName = request.getParameter(""); // Changed variable name to inputName
            //out.print("Name: " + inputName);
            con.close(); // Don't forget to close the connection after use
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>

    </body>
</html>
