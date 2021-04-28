<%-- 
    Document   : grupoAppWeb
    Created on : 27/10/2020, 22:48:56
    Author     : taina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String erro = (String) request.getAttribute("erro");
        %>
        <h1>
        <%= erro%>
        </h1>
    </body>
</html>
