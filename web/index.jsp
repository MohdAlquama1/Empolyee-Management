<%-- 
    Document   : index
    Created on : 06-Feb-2024, 7:29:20 PM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

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
                margin-left:auto;
                margin-right: auto;
                margin-top: auto;
                margin-bottom: auto;
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

                    <button class="text_button"   id="employee"     >New Employee  </button>
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





        </div>
        <div class="time">
            <samp id = "t"></samp>
        </div>
        
        
        
        
        <div class="AllEmployeeDivpartten">
            <a href="hr_AllEmployeeDetail.jsp" class="AllEmployeeDetail">All Employee Detail</a>
        </div>



    </body>
    <script>
        let text_button = document.querySelector("#employee");
        text_button.addEventListener('click', () => {
            window.open("newEmp.jsp");
        });

        setInterval(updateTime, 1000);
        function updateTime() {
            t.innerHTML = new Date;

        }

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

    </script>
</html>

