<%-- 
    Document   : everyWhereUse
    Created on : 17-Mar-2024, 2:02:15 AM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">        
        <style>
            .leftSide{

                background: yellow;
                margin-top: 85px;

                position: absolute;
                width: 400px;
                height: 800px;
                color: red;
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
                margin-left: 140px;

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
            .time{
                margin-left: 700px;

                position: absolute;
                margin-top: 40px;
            }
            .totalEmployeeCount{
                height: 11%;
                width: 11%;
                position: absolute;
                background: green;
                top: 13%;
                left: 50%;
                border-radius: 20px;

            }
            .AllEmployeeDivpartten{
                position: absolute;
                top: 11%;
                left: 25%;
                height: 6%;
                width: 7%;
                background: #;
            }
            .AllEmployeeDetail{
                color: #666666;
            }
        </style>
    </head>
    <body>
        <div class="leftSide">

            <nav class="nav">
                <div class="text">

                    <button class="text_button"   id="employee"     >Back</button>
                </div>
            </nav>

            <nav class="nav2">
                <div class="text2">
                    <button class="text_button" id="traning"     > Traning </button>
                </div>
            </nav>
            <nav class="nav3">
                <div class="text2">
                    <button class="text_button" id="attendance"> Attendance </button>
                </div>
            
                <nav class="nav4">
                    <div class="text2">
                        <button class="text_button" id="salary"> Salary</button>
                    </div>


                </nav>
                 <nav class="nav4">
                    <div class="text2">
                        <button class="text_button" id="project"> Porject</button>
                    </div>


                </nav>

            </div>




        
        
        
        
        



    </body>
    <script>
        let text_button = document.querySelector("#employee");
        text_button.addEventListener('click', () => {
            window.open("index.jsp");
        });

       

        let training = document.querySelector('#traning');
        training.addEventListener('click', () => {
            window.open("training.jsp");
        });
        let salary = document.querySelector('#salary');
        salary.addEventListener('click', () => {
            window.open('salary.jsp');
        });
        let attendance = document.querySelector('#attendance');
        attendance.addEventListener('click', () => {
            window.open('attendance.jsp');
        });
        let project = document.querySelector('#project');
        project.addEventListener('click', () => {
            window.open('hr_project.jsp');
        });

    </script>
</html>

