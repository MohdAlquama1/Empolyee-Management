<%-- 
    Document   : attendance
    Created on : 09-Mar-2024, 6:31:37 PM
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
     /*        .leftSide{
              
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
                
                .frm{
                top: 10px;
                position: absolute;
                font-size: larger;
                letter-spacing: 0px;
                left: 1208px;
                height: 500px;
                width: 400px;
                background: gold;
               
            }
            .tabl{
                position: absolute;
                top: 100px;
                left: 43px;
                right: auto;
                
            }
            input{
                margin-bottom: 20px;
                left: 5px;
                
            }
             
            .resiger{
            position: absolute;
            left: 67px;
                  
                   
            }*/
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
        
        <!--<div class="leftSide">
            
            <nav class="nav">
                <div class="text">
                   
                    <button class="text_button" id="back">back</button>
                </div>
            </nav>
            
            <nav class="nav2">
                <div class="text2">
                    <button class="text_button" > Traning </button>
                </div>
            </nav>
            <nav class="nav3">
                <div class="text2">
                    <button class="text_button"> Attendance </button>
                </div>
                
               <nav class="nav4">
                <div class="text2">
                    <button class="text_button"> Salary</button>
                </div>  
            </nav>          
              <div class="frm"> 
                  <h2 class ="resiger" > Atendance Regster </h2>
                <form method="post" action="attendance">
                    <table class="tabl">
                <tr>
                    <td>Attendance Id</td>
                    <td>  <input type="text" name="attId" placeholder="Attendance Id"/> </td>
                </tr>
                <tr>
                    <td>Email Id</td>
                    <td>  <input type="email" name="empEmail" placeholder="Attendance Id"/> </td>
                </tr>
                 <tr>
                    <td>Date</td>
                    <td>  <input type="text" name="attDate" placeholder="eg.yyyy-mm-dd"/> </td>
                </tr>
                <tr>
                    <td>Type</td>
                    <td> <select name="type" >
                            <option value="" selected="selected" >select</option>
                            <option value="Office">Office</option>
                            <option value="Home">Home</option>
                            <option value="Other">Other</option>
                        </select>
                    </td>
                </tr>
                 <tr>
                    <td>Entry Time</td>
                    <td>  <input type="time" name="entry"/> </td>                 
                </tr>
                 <tr>
                    <td>Leave Id</td>
                    <td>  <input type="text" name="leaveId" placeholder="Leave Id"/> </td>                  
                </tr>
                <tr>
                    <td>Exit Time</td>
                    <td><input type="time" name="exit" placeholder=" Entry time"/></td>
                </tr>
                <tr>
                    <td>Employee Id</td>
                    <td><input type="text" name="empId" placeholder="Employee Id"/></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit"  style="color: red ;  background: black;  top: 285px;left: 175px; position: absolute;"/>
                    </td>    
                </tr>
            </table>
        </form> 
      </div>-->
       <div class="con">
            <section class="container" >
                <header>Attendance Form</header>
                <form name="loginform" action="attendance" class="form"  method="post" onsubmit=" return validateForm(event)" >
                    <div class="input-box">
                        <label>Training id</label>
                        <input type="text" name="attId" placeholder="Attendance Id"/> 
                    </div>
                    <div class="input-box">
                        <label>l id</label>
                        <input type="text" name="leaveId" placeholder="Leave Id"/>
                    </div>
                     <div class="input-box">
                        <label>Enter Email</label>
                      <input type="email" name="empEmail" placeholder="Email Id"/> 
                    </div>
                    <div class="input-box">
                        <label>Enter date</label>
                        <input type="date" name="attDate" placeholder="eg.yyyy-mm-dd"/>
                    </div>
                    <div class="column">
                        <div class="input-box">
                            <label>Enter time</label>
                           <input type="time" name="entry"/> 
                        </div>
                        <div class="input-box">
                            <label>Exit Time</label>
                            <input type="time" name="exit" placeholder=" Entry time"/>
                        </div>
                    </div>

                    <div class="input-box address">

                        <div class="column">
                            <div class="select-box">
                                <div class="q1">
                              <input type="text" name="empId" placeholder="Employee Id"/>
                                </div>
                        </select>
                            </div>
                            <div class="select-box">
                               <select name="type" >
                                   <option value=""hidden="" >select</option>
                            <option value="Office">Office</option>
                            <option value="Home">Home</option>
                            <option value="Other">Other</option>
                        </select>
                            </div>
                        </div>
                    </div>
                    <button id="sumbit">Submit</button>
                </form>
            </section>
        </div>
        
        
    </body>
    <script>
        
    </script>
</html>
