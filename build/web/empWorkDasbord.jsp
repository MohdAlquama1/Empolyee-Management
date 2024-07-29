<%-- 
    Document   : empWorkDasbord
    Created on : 11-Mar-2024, 12:43:11 AM
    Author     : integral
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@page language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <link href="path/to/mdb.min.css" rel="stylesheet">
        <style>


            /*  
              
               .leftSide{
                
                  background: yellow;
                  margin-top: 85px;
                  
                  position: absolute;
                  width: 400px;
                  height: 800px;
               
              }
              .top{
                  position: absolute;
                  height: 70px;
                  width: 1400px;
                  background: royalblue;
                  margin-left: 450px;
              }
              .nav{
                  position: absolute;
                  height: 100px;
                  width:  400px;
                  background: whitesmoke;
                
                  
                  }
                  .text{
                      position: absolute;
                      margin-left:140px;
                     
                      margin-top: 30px;
                      
                  }
                  .text_button{
                      border-radius: 106px;
                      font-family: monospace;
                      backface-visibility: inherit;
                      
                                
                  }
                    .nav2{
                        margin-top:94px;
                  position: absolute;
                  height: 100px;
                  width: 400px;
                  background:white;
                  
                      
                  }
                  .text2{
                      
                      margin-left: 140px;
                    
                     margin-top: 30px;
                     
                  }
                  .nav3{
                       margin-top:190px;
                  position: absolute;
                  height: 100px;
                  width: 400px;
                  background:whitesmoke;
                  }
                  .nav4{
                       margin-top:40px;
                  position: absolute;
                  height: 100px;
                  width: 400px;
                  background:white;
                      
                  }
                  .emp_id{
                      position: absolute;
                      
                      left: 50%;
                      
                  }*/
        </style>

    </head>
    <body>

        <!-- <div class="leftSide">
          
          <nav class="nav">
              <div class="text">
                 
                  <button class="text_button" id="attendance" >Attendance</button>
              </div>
          </nav>
          
          <nav class="nav2">
              <div class="text2">
                  <button class="text_button" id="training"> Traning </button>
              </div>
          </nav>
          <nav class="nav3">
              <div class="text2">
                  <button class="text_button"> Ance </button>
              </div>
              
             <nav class="nav4">
              <div class="text2">
                  <button class="text_button"> Salary</button>
              </div>
              
              
          </nav>    
          
        -->
        <!-- Navbar -->
        <!-- Navbar -->
         <%
                   String emp = (String)request.getAttribute("iddd"); String name = (String)request.getAttribute("name");
                    String s1 = name.substring(0, 1).toUpperCase();  // first letter = J 
                  
        %>
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
                            <a class="nav-link" href="userAttendance.jsp">Attendance</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="userProject.jsp">Projects</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="userSalary.jsp">Salary</a>
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
                        
                            
                        <a href="userPorfile.jsp"> <%= s1%> </a>

                       
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
        <!-- Navbar -->
        <div class="emp_id">

<!--            <h1>Hello <%= emp %></h1>-->
            <h1>Welcome back &#x1F44B;  <%= name %></h1>


        </div>
            
             <sql:setDataSource  var="s" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/hr?allowPublicKeyRetrieval=true&useSSL=false" password="Alquama@123" user="alquamaa"
            />
       <sql:query dataSource="${s}" var="r">
           SELECT * FROM ATTENDANCE WHERE ATT_DATE BETWEEN DATE_FORMAT(NOW(), '%Y-%m-1') AND CURDATE() AND EMP_ID = <%=emp%>;
          
                </sql:query>
           <div class="container-fluid float-sm-left">
               <table class="table table-striped">
               <tr>
                   <td>Date</td>
                   <td>Type</td>
                   <td>Enter time</td>
                   <td>Exit time</td>
                   <td>Leave id</td>
                   <td>Employee id</td>
                   
                   
                   
               </tr>
                   <c:forEach items="${r.rows}" var="rs">
                        <tr>
                            <td> <c:out value="${rs.ATT_DATE}" ></c:out>   </td>
                            <td><c:out value="${rs.ATT_TYPE}" ></c:out>  </td>
                            <td><c:out value="${rs.ATT_ENTRY_TIME}" ></c:out> </td>
                            <td><c:out value="${rs.ATT_EXIT_TIME}" ></c:out> </td>
                            <td><c:out value="${rs.ATT_LEAVE}" ></c:out> </td>
                            <td><c:out value="${rs.EMP_ID}" ></c:out> </td>
                            
                        </tr>
                           </c:forEach> 
               </table>
           </div>
                 
        <script src="path/to/jquery.min.js"></script>

        <!-- Include necessary JavaScript files for MDB UI Kit -->
        <script src="path/to/mdb.min.js"></script>
    </body>
    <script>
//     let attandance = document.querySelector('#attendance');
//     attandance.addEventListener('click',()=>{
//         window.open('newAttendance.jsp');
//     });
        
    </script>
</html>