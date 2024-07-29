<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : welcome
    Created on : 29-Feb-2024, 4:53:09 PM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .viewPage{
                height: 300px;
                width: 500px;
                color: darkblue;
                background: black;
                position: absolute;
                left: 700px;
                right: 500px;
                border-radius: 40px;
                top: 30%;
            }
            .viewButton{
                position: absolute;
                top: 45%;
                left: 36%;    
            }
            .Button{
                width: 70px;
                height: 30px;
                font-size: large;
            }
        </style>
    </head>
    <body>
        <!--<img src="img/attendance.jpg" width="100%" height="100%"/> -->

        <div class="viewPage">
            <div class="viewButton">
                <button class="Button" id="hr">HR</button>
                <button class="Button" id="user">USER</button>
            </div>
        </div> 
       
    </body>
    <script>
        let hr = document.querySelector('#hr');
        hr.addEventListener('click',()=> window.open('HrView.jsp'));
        let user = document.querySelector('#user').addEventListener('click',()=>window.open('UserView.jsp'));
    </script>
</html>
