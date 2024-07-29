<%-- 
    Document   : hr_project
    Created on : 01-May-2024, 2:13:13 AM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="everyWhereUse.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                top: 22%;
                position: absolute;
                height: 20%;
                width: 20%;
            }
        </style>
    </head>
    <body>
          <div class="con">
            <section class="container" >
                <header>Project Form</header>
                <form name="loginform" action="Project" class="form"  method="post" onsubmit=" return validateForm(event)" >
                    <div class="input-box">
                        <label>Project id</label>
                        <input type="text"    placeholder="Enter project Id" name="pId" id="pId"/>
                    </div>
                    <div class="input-box">
                        <label> Project end time </label>
                        <input type="text" placeholder="Enter end time"  id ="name" name="end"/>
                    </div>
                    <div class="input-box">
                        <label>Empolyee id</label>
                        <input type="text" placeholder="Enter employee id"  id ="eId" name="eId"/>
                    </div>
                   
                    <div class="input-box address">

                        <div class="column">
                            <div class="select-box">
                                <select name="fruitSelect" id="fruitSelect" >
                                    <!-- c<!--selected="selected" value="" --> 
                                    <option value="" hidden="">Project category</option>
                                    <option value="Frond-End" >Frond-End</option>
                                    <option value="Back-End">Back-End</option>
                                    <option  value="Frond-End + Back-End">Frond-End + Back-End</option>
                                   
                                </select>
                            </div>
                            <div class="select-box">
                                <select name="city" id="city" >
                                    <!-- c<!--selected="selected" value="" --> 
                                    <option value="" hidden="">Enter type</option>
                                    <option value="Hostal" >Hostal</option>
                                    <option value="Collage">Collage</option>
                                    <option  value="Medial">Medial</option>
                                    <option  value="Kolkata">Kolkata</option>
                                    <option  value="Kochi">Kochi</option>
                                    <option  value="Chandigarh">Chandigarh</option>
                                    <option  value="Pune">Pune</option>
                                    <option  value="Mumbai">Mumbai</option>
                                    <option  value="NCR">NCR</option>
                                    <option  value="Ahmedabad">Ahmedabad</option>
                                    <option  value="Delhi">Delhi</option>
                                    <option  value="Thiruvananthapuram">Thiruvananthapuram</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <button id="sumbit">Submit</button>
                </form>
            </section>
        </div>
    
    </body>      
</html>
