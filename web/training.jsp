<%-- 
    Document   : training
    Created on : 20-Feb-2024, 7:00:23 AM
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
            /*     .leftSide{
                  
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
        </style>
    </head>
    <body>      
        <!--  <div class="leftSide">
              
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
                    <h2 class ="resiger" > Training Regster </h2>
                  <form method="post" action="TRAINING">
                      <table class="tabl">
                  <tr>
                      <td>Training Id</td>
                      <td>  <input type="text" name="training_id" placeholder="Training Id"/> </td>
                  </tr>
                   <tr>
                      <td>Training Name</td>
                      <td>  <input type="text" name="training_name" placeholder="Training Name"/> </td>
                  </tr>
                  <tr>
                      <td>
                          Training Month
                      </td>
                      <td><input type="date" name="training_month" placeholder="Training Month" /></td>
                  </tr>
                   <tr>
                      <td>Training Type</td>
                      <td>  <input type="text" name="training_type" placeholder="Training Type"/> </td>                 
                  </tr>
                   <tr>
                      <td>Training Place</td>
                      <td>  <input type="text" name="training_place" placeholder="Training Place"/> </td>                  
                  </tr>
                  <tr>
                      <td>
                          Employee Id
                      </td>
                      <td><input type="text" name="employee_id" placeholder="Employee Id"/></td>
                  </tr>
                  <tr>
                      <td>
                          <input type="submit"  style="color: red ;  background: black;  top: 285px;left: 175px; position: absolute;"/>
                      </td>    
                  </tr>
              </table>
          </form> 
        </div> -->
        <!-- TEMPLED CODE -->
        <div class="con">
            <section class="container" >
                <header>Training Form</header>
                <form name="loginform" action="TRAINING" class="form"  method="post" onsubmit=" return validateForm(event)" >
                    <div class="input-box">
                        <label>Training id</label>
                        <input type="text"    placeholder="Enter training Id" name="tId1" id="tId"/>
                    </div>
                    <div class="input-box">
                        <label>Training name</label>
                        <input type="text" placeholder="Enter training name"  id ="name" name="name"/>
                    </div>
                    <div class="input-box">
                        <label>Empolyee id</label>
                        <input type="text" placeholder="Enter employee id"  id ="eId" name="eId1"/>
                    </div>
                    <div class="column">
                        <div class="input-box">
                            <label>Date form</label>
                            <input type="date" placeholder="Enter date form" id="form" name="f1"/>
                        </div>
                        <div class="input-box">
                            <label>Date to</label>
                            <input type="date" placeholder="Enter date to" id="to" name="f2"/>
                        </div>
                    </div>

                    <div class="input-box address">

                        <div class="column">
                            <div class="select-box">
                                <select name="fruitSelect" id="fruitSelect" >
                                    <!-- c<!--selected="selected" value="" --> 
                                    <option value="" hidden="">Training Type</option>
                                    <option value="Orientation" >Orientation Training</option>
                                    <option value="Onboarding">Onboarding Training</option>
                                    <option  value="Compliance">Compliance Training</option>
                                    <option  value="Product">Product Training</option>
                                    <option  value="Leadership">Leadership Training</option>
                                    <option  value="Technical">Technical Training</option>
                                    <option  value="Quality Assurance">Quality Assurance (Q/A) Training</option>
                                    <option  value="Sales">Sales Training</option>
                                    <option  value="Soft-Skills">Soft-Skills Training</option>
                                    <option  value="Team">Team Training</option>
                                    <option  value="Diversity">Diversity Training</option>
                                    <option  value="Safety">Safety Training</option>
                                </select>
                            </div>
                            <div class="select-box">
                                <select name="city" id="city" >
                                    <!-- c<!--selected="selected" value="" --> 
                                    <option value="" hidden="">Enter city</option>
                                    <option value="Bangalore" >Bangalore</option>
                                    <option value="Hyderabad">Hyderabad</option>
                                    <option  value="Chennai">Chennai</option>
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
    <script>

        function validateForm(event) {
          //  event.preventDefault();
            const alphabeticRegex = /^[A-Za-z\s]+$/;
            const dateFormatRegex = /^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-\d{4}$/;
            let trId = document.loginform.tId.value;
            let  name = document.loginform.name.value;
            let eId = document.loginform.eId.value;
            let form = document.loginform.form.value;
            let to = document.loginform.to.value;
            let selectedFruit = document.loginform.fruitSelect.value;
            let city = document.loginform.city.value;
            if (isNaN(trId) || Number.isInteger(trId) || trId === "") {
                alert("Unvalidated ! enter training id ?");
                document.loginform.trId.focus();
                return false;
            } else if (!alphabeticRegex.test(name) || name === "") {
                alert("Unvalidated ! enter training name ?");
                document.loginform.name.focus();
                return false;
            } else if (isNaN(eId) || Number.isInteger(eId) || eId === "") {
                alert("Unvalidated ! enter employee id ?");
                document.loginform.eId.focus();
                return false;
            } else if (form === "" || dateFormatRegex.test(form)) {
                alert("Unvalidated ! enter date form ?");
                document.loginform.form.focus();
                return false;
            } else if (to === "" || dateFormatRegex.test(to)) {
                alert("Unvalidated ! enter date to ?");
                document.loginform.to.focus();
                return false;
            } else if (selectedFruit === "") {
                alert("Unvalidated ! enter training type ?");

                return false;
            } else if (city === "") {
                alert("Unvalidated ! enter training city ?");
                
                return false;
            } else {
               // document.loginform.submit();
                alert("Form submitted successfully!");
                return  true;
                
            }
        }
    </script>
</html>
