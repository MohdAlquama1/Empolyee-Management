<%-- 
    Document   : newEmp
    Created on : 16-Feb-2024, 1:41:57 PM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        -->
        <style>
            .time{
                margin-left: 700px;

                position: absolute;
                margin-top: 75px;
            }
            .resiger{
                position: absolute;
                left: 67px;


            }
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

            /* .frm{
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
              margin-bottom: 24px;
              left: 5px;
              
          }
           
          .resiger{
          position: absolute;
          left: 67px;
                
                 
          }
          .newFrom{
              position: absolute;
              left: 670px;
          }
            */
            .container {

                left: 800px;
                top: -290px;
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
            /*Responsive*/


        </style>
        <title>JSP Page</title>

    </head>
    <body>

        <div class="leftSide">

            <nav class="nav">
                <div class="text">

                    <button class="text_button" id="back">black</button>
                </div>
            </nav>

            <nav class="nav2">
                <div class="text2">
                    <button class="text_button" id="training"> Traning </button>
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

                <!-- old register from  
                
                <div class="frm"> 
                  
             
               <h2 class ="resiger" > Employee Regster </h2>

                <form method="post" action="newEmp">
                   
            <table class="tabl">
               

                <!-- not use <tr>
                     <td>Id</td>
                     <td>  <input type="text" name="emp_id" placeholder="Employee Id"/> </td>
             
                    
                 </tr>
                -->
                <!--    <tr>
                       <td>Name</td>
                       <td>  <input type="text" name="name" placeholder="Employee Name"/> </td>
               
                      
                   </tr>
                   <tr>
                       <td>
                           Moble
                       </td>
                       <td><input type="text" name="moble" placeholder="Employee Moble" /></td>
                   </tr>
                  
                    <tr>
                       <td>Email</td>
                       <td>  <input type="text" name="email" placeholder="Employee Email"/> </td>                 
                   </tr>
                    <tr>
                       <td>Address</td>
                       <td>  <input type="text" name="address" placeholder="Employee Address"/> </td>                  
                   </tr>
                  
                   
                   <tr>
                       <td>
                           Password
                       </td>
                       <td style="#"><input type="password" name="password" placeholder="Employee Password"/></td>
                   </tr>
                         <tr>
                       <td>
                           <input type="submit"  name="" style="color: red ;  background: black;  top: 285px;left: 175px; position: absolute;"/>
                       </td>
                           
                   </tr>
                   
                  
               </table>
               
           </form> 
         </div> -->

                <!-- templete code -->   

                <section class="container" >
                    <header>Registration Form</header>
                    <form name="loginform" action="newEmp" class="form"  method="post" onsubmit="return validateForm(event)" >
                        <div class="input-box">
                            <label>Full Name</label>
                            <input type="text"  id="name" placeholder="Enter full name"  name="name"/>
                        </div>
                         
                        <div class="input-box">
                            <label>Email Address</label>
                            <input type="text" placeholder="Enter email address"  id ="email" name="email"/>
                        </div>
                        <div class="input-box">
                            <label>Password</label>
                            <input type="text" placeholder="Enter pasword "  id ="password" name="password"/>
                        </div>
                        <div class="column">
                            <div class="input-box">
                                <label>Phone Number</label>
                                <input type="text" placeholder="Enter phone number"  id ="number" name="number"/>
                            </div>
                            <div class="input-box">
                                <label>Birth Date</label>
                                <input type="date" placeholder="Enter birth date" id="date" name="date"/>
                            </div>
                        </div>
                        <div class="gender-box">
                            <h3>Gender</h3>
                            <div class="gender-option">
                                <div class="gender">
                                    <input type="radio" id="check-male" name="gender12"  value="Male"/>
                                    <label for="check-male">male</label>
                                </div>
                                <div class="gender">
                                    <input type="radio" id="check-female" name="gender12" value="Female"/>
                                    <label for="check-female">Female</label>
                                </div>
                                <div class="gender">
                                    <input type="radio" id="check-other" name="gender12" value="Other"/>
                                    <label for="check-other">prefer not to say</label>
                                </div>
                            </div>
                        </div>
                        <div class="input-box address">
                            <label>Address</label>
                            <input type="text" placeholder="Enter street address"  id="address1" name="address1"/>
                            <input type="text" placeholder="Enter street address line 2" id="address2" name="address2"/>
                            <div class="column">
                                <div class="select-box">
                                    <select name="country">
                                        <option selected="selected" value=""  >Country</option>
                                        <option value="America" >America</option>
                                        <option value="Japan">Japan</option>
                                        <option  value="India">India</option>
                                        <option  value="Nepal">Nepal</option>
                                    </select>
                                </div>
                                <input type="text" placeholder="Enter your city" id="city"  name="city"/>
                            </div>
                            <div class="column">
                                <input type="text" placeholder="Enter your region" id="region" name="region"/>
                                <input type="number" placeholder="Enter postal code" id="code" name="postalCode"/>
                            </div>
                        </div>
                        <button id="sumbit">Submit</button>
                    </form>
                </section>

                </body>

                <script>
                    let back_button = document.querySelector("#back");
                    back_button.addEventListener('click', () => {
                        window.open("index.jsp");
                    });
                    let training_button = document.querySelector("#training");
                    training_button.addEventListener('click', () => {
                        window.open("training.jsp");
                    });
                    function validateForm(event)
                    {
                        event.preventDefault(); // this will prevent the submit event.
                        let name = document.loginform.name.value;
                        if (name === "")
                        {
                            alert("User Name can not be left blank");
                            document.loginform.username.focus();
                            return false;
                        } else if (typeof document.loginform.number.value !== "string")
                        {
                            alert("Password can not be left blank");
                            document.loginform.password.focus();
                            return false;
                        } else {
                            document.loginform.submit();// fire submit event
                        }
                    }

                </script>
                </html>
