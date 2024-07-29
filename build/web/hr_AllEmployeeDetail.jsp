<%-- 
    Document   : hr_AllEmployeeDetail
    Created on : 12-Mar-2024, 1:38:11 AM
    Author     : integral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@page language="java" %>
<%@include file="everyWhereUse.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        
           
        
            
         <sql:setDataSource  var="s" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/hr?allowPublicKeyRetrieval=true&useSSL=false" password="Alquama@123" user="alquamaa"
            />
       
        
         
                      <sql:query dataSource="${s}" var="r">
                    SELECT * FROM EMPLOYEE
                </sql:query>
                        
                    <div style="left: 33%; position:  absolute; top: 9%;">
                        <div class="container">
                        <table class="table table-striped">
                        <tr >
                            
                            <td> id </td>
                            <td>EMP_NAME</td>
                            <td>EMP_MOBLE</td>
                            <td>EMP_EMAIL</td>
                            <td>EMP_ADDRESS</td>
                            <td>EMP_PASSWORD</td>
                        </tr>
                   <c:forEach items="${r.rows}" var="rs">
                        <tr>
                            <td><c:out value="${rs.EMP_ID}" ></c:out> </td>
                            <td><c:out value="${rs.EMP_NAME}" ></c:out> </td>
                            <td><c:out value="${rs.EMP_MOBLE}" ></c:out> </td>
                            <td><c:out value="${rs.EMP_EMAIL}" ></c:out> </td>
                            <td><c:out value="${rs.EMP_ADDRESS}" ></c:out> </td>
                            <td><c:out value="${rs.EMP_PASSWORD}" ></c:out> </td>
                            

                        </tr>
</c:forEach> 
           
            
                       
                          
                       
                        </table>
                            
                    </div>
                    </div>
    </body>
</html>
