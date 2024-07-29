<%-- 
    Document   : userAttendance
    Created on : 30-Apr-2024, 4:23:23 PM
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
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <style>
            .container {

                left: 800px;
                top: -270px;
                position: absolute;
                max-width: 100%;
                width: 100%;
                background: #fff;
                padding: 25%;
                border-radius: 8px;
                //box-shadow: 0 0 2px rgba(0, 0, 0, 0.1);
            }
            .container header {
                font-size: 1.5rem;
                color: #333;
                font-weight: 500;
                text-align: center;
            }
            .container .form {
                margin-top: 30px;
            }
            .form .input-box {
                width: 100%;
                margin-top: 20px;
            }
            .input-box label {
                color: #333;
            }
            .form :where(.input-box input, .select-box) {
                position: relative;
                height: 50px;
                width: 100%;
                outline: none;
                font-size: 1rem;
                color: #707070;
                margin-top: 8px;
                border: 1px solid #ddd;
                border-radius: 6px;
                padding: 0 15px;
            }
            .input-box input:focus {
                box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
            }
            .form .column {
                display: flex;
                column-gap: 15px;
            }
            .form .gender-box {
                margin-top: 20px;
            }
            .gender-box h3 {
                color: #333;
                font-size: 1rem;
                font-weight: 400;
                margin-bottom: 8px;
            }
            .form :where(.gender-option, .gender) {
                display: flex;
                align-items: center;
                column-gap: 50px;
                flex-wrap: wrap;
            }
            .form .gender {
                column-gap: 5px;
            }
            .gender input {
                accent-color: rgb(130, 106, 251);
            }
            .form :where(.gender input, .gender label) {
                cursor: pointer;
            }
            .gender label {
                color: #707070;
            }
            .address :where(input, .select-box) {
                margin-top: 15px;
            }
            .select-box select {
                height: 100%;
                width: 100%;
                outline: none;
                border: none;
                color: #707070;
                font-size: 1rem;
            }
            .form button {
                height: 55px;
                width: 100%;
                color: #fff;
                font-size: 1rem;
                font-weight: 400;
                margin-top: 30px;
                border: none;
                cursor: pointer;
                transition: all 0.2s ease;
                background: rgb(130, 106, 251);
            }
            .form button:hover {
                background: rgb(88, 56, 250);
            }
            .con{
                top: 30%;
                position: absolute;
                height: 20%;
                width: 20%;
            }
            .ent1{
                position: relative;
                top : -15px;
                width: 143px;
                right:   15px;
            }
            .q1{
                position: absolute;
                top :-15px;
                right: 32px;
                width: 143px;
            }
        </style>
    </head>
    <body>
        <%
            String name = (String) session.getAttribute("1"); 
                    String s1 = name.substring(0, 1).toUpperCase();
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




        <div class="con">
            <section class="container" >
                <header>Attendance Form</header>
                <form name="loginform" action="empAtendance" class="form"  method="post" onsubmit=" return validateForm(event)" >

                    <div class="input-box">
                        <label>Attendance id</label>
                        <input type="text" name="Aid" placeholder="Attendance Id" required/> 
                    </div>
                    <div class="input-box">
                        <label>Employee leave id</label>
                        <input type="text" name="leaveId" placeholder="Leave Id" required/>
                    </div>
<!--                    <div class="input-box">
                        <label>Enter leave no</label>
                        <input type="text" name="Eid" placeholder="Email Id"/> 
                    </div>-->
                    <div class="input-box">
                        <label> Chose attendance type</label>
                        <div class="select-box">
                            <select name="type" required >
                                <option value=""hidden="" >select</option>
                                <option value="Office">Office</option>
                                <option value="Home">Home</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                    </div>


                    <button id="sumbit">Submit</button>

                    </div>


                </form>
            </section>
        </div>

        <script>



        </script>
    </body>
</html>
