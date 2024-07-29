<%-- 
    Document   : salary
    Created on : 29-Feb-2024, 4:18:31 PM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <style>
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
                
                .frm{
                top: 160px;
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
                  
                   
            }
        </style>
    </head>
    <body>      
        <div class="leftSide">
            
            <nav class="nav">
                <div class="text">
                   <button class="text_button" id="back">Back</button>
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
            </nav>
               <!--<nav class="nav4">
                <div class="text2">
                    <button class="text_button"> Salary</button>
                </div>
            </nav>-->
               
              <div class="frm"> 
                  <h2 class ="resiger" > Training Regster </h2>
                <form method="post" action="#">
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
                    <td>  <input type="text"  name="training_place" placeholder="Training Place"/> </td>                  
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
      </div>
    </body>
    <script>
        let back = document.querySelector('#back');
        back.addEventListener('click',()=>{
           window.open('index.jsp'); 
        });
        let 
    </script>
</html>
