<%-- 
    Document   : userSalary
    Created on : 10-May-2024, 1:52:12 AM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <style>
            .container {
                max-width: 800px;
                margin: 20px auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            h1 {
                text-align: center;
                margin-bottom: 20px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
            }
            th, td {
                padding: 10px;
                border-bottom: 1px solid #ddd;
            }
            th {
                background-color: #f2f2f2;
            }
            .footer {
                text-align: center;
                margin-top: 20px;
            }
            @media only screen and (max-width: 600px) {
                .container {
                    padding: 10px;
                }
            }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%int id = (int) session.getAttribute("id");
             String name = (String) session.getAttribute("1"); 
             String s1 = name.substring(0, 1).toUpperCase();
        %>
        <sql:setDataSource  var="s" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/hr?allowPublicKeyRetrieval=true&useSSL=false" password="Alquama@123" user="alquamaa"
                            />
        <sql:query dataSource="${s}" var="r">
            SELECT * FROM SALARY WHERE DAL_DATE BETWEEN DATE_FORMAT(NOW(), '%Y-%m-1') AND CURDATE()AND EMP_ID=<%=id%> ;
        </sql:query>
        <nav class="navbar navbar-expand-lg navbar-light bg-body-tertiary my-2, my-lg-0, mr-sm-0, my-sm-0">
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
                            height="40px"
                            alt="MDB Logo"
                            loading="lazy"
                            />
                    </a>
                    <!-- Left links -->
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                        <li class="nav-item">
                            <a class="nav-link" href="#"onclick="history.back()">Dashboard</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="userAttendance.jsp">Attendance</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="userProject.jsp">Projects</a>
                        </li>
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


                        <a href="userPorfile.jsp"><%=s1%></a>


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


        <div class="container">
            <c:forEach items="${r.rows}" var="rs">
            <h1>Salary Slip</h1>
            <table>
                <tr>
                    <th>Description</th>
                    <th>Amount</th>
                </tr>
                <tr>
                    <td>Basic Salary</td>
                    <td><c:out value="${rs.SAL_BASIC_SALARY}"></c:out></td>
                </tr>
                <tr>
                    <td>Allowance</td>
                    <td><c:out value="${rs.SAL_ALLOWANCE}"></c:out></td>
                </tr>
                <tr>
                    <td>Bonus</td>
                    <td><c:out value="${rs.SAL_BONUS}"></c:out></td>
                </tr>
                <tr>
                    <td><strong>Total</strong></td>
                    <td><strong><c:out value="${rs.SAL_TOTAL}"></c:out></strong></td>
                </tr>
            </table>
            <div class="footer">
                Generated on: <c:out value="${rs.DAL_DATE}"></c:out>
            </div>
            </c:forEach>
        </div>

        <%-- 
         <c:forEach items="${r.rows}" var="rs">
             <c:out value="${rs.AA1}"></c:out>
         </c:forEach> --%>
    </body>
</html>
