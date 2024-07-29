<%-- 
    Document   : k
    Created on : 29-Apr-2024, 1:34:13 PM
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
        
        <h1>Hello k World!</h1>
        <form name="g" action="./k.jsp">
            <input type="text" name="name">
            <input type="submit" value="" />
        </form>
        <%
            String name = request.getParameter("name");
        %>
        <h1>helo<%out.print(name);%></h1>
    </body>
</html>
